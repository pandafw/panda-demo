package panda.demo.action.task;

import java.io.File;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import panda.app.action.work.GenericSyncWorkAction;
import panda.app.auth.Auth;
import panda.app.constant.AUTH;
import panda.app.index.RevisionedIndexes;
import panda.dao.Dao;
import panda.dao.DaoIterator;
import panda.demo.entity.Pet;
import panda.demo.entity.PetCategory;
import panda.demo.entity.PetImage;
import panda.demo.util.PetIndexer;
import panda.demo.util.WebActionAssist;
import panda.demo.util.WebActionConsts;
import panda.idx.IDocument;
import panda.idx.Indexer;
import panda.idx.Indexes;
import panda.io.Streams;
import panda.lang.Arrays;
import panda.lang.Exceptions;
import panda.lang.Randoms;
import panda.lang.Strings;
import panda.lang.time.DateTimes;
import panda.mvc.annotation.At;

@At("/task/reset")
@Auth({ AUTH.LOCAL, AUTH.TOKEN, AUTH.SUPER })
public class ResetAction extends GenericSyncWorkAction {
	/**
	 * @return the consts
	 */
	@Override
	protected WebActionConsts consts() {
		return (WebActionConsts)super.getConsts();
	}

	/**
	 * @return the assist
	 */
	@Override
	protected WebActionAssist assist() {
		return (WebActionAssist)super.getAssist();
	}

	@Override
	protected void doExecute() {
		final Dao dao = getDaoClient().getDao();
		
		dao.exec(new Runnable() {
			@Override
			public void run() {
				printInfo("Delete PetImage: " + dao.deletes(PetImage.class));
				printInfo("Delete Pet: " + dao.deletes(Pet.class));
				printInfo("Delete PetCategory: " + dao.deletes(PetCategory.class));
				
				initPetCategory(dao);
				initPets(dao, 1001L, "dog");
				initPets(dao, 1002L, "cat");
			}
		});

		initPetIndex(dao);
	}
	
	private void initPetCategory(Dao dao) {
		String[] cs = new String[] { "Dog　犬", "Cat　猫", "Pig　猪　豚", "Fish　鱼", "Insert　昆虫" };
		
		long i = 1000;
		for (String s : cs) {
			PetCategory c = new PetCategory();
			c.setId(++i);
			c.setName(s);
			assist().initCreatedByFields(c);
			dao.insert(c);
			
			status.count++;
			printInfo("Add PetCategory: " + c.getId() + " / " + c.getName());
		}
	}
	
	private void initPets(Dao dao, long cid, String cat) {
		String ipath = getServlet().getRealPath("/pets/");
		
		Object[] origins = consts().getPetOriginMap().keySet().toArray();
		Object[] tempers = consts().getPetTemperMap().keySet().toArray();
		Object[] habits = consts().getPetHabitMap().keySet().toArray();
		
		try {
			List<File> files = new ArrayList<File>();
			for (int i = 1; ; i++) {
				String name = cat + Strings.leftPad(String.valueOf(i), 2, '0') + ".jpg";
				File f = new File(ipath, name);
				if (!f.exists()) {
					break;
				}
				files.add(f);
			}
			

			for (int i = 0; i < 100; i++) {
				File f = files.get(Randoms.randInt(files.size()));

				// Pet
				Pet p = new Pet();
				p.setId(cid * 1000 + i);
				p.setCid(cid);
				p.setName(cat + ' ' + Strings.leftPad(String.valueOf(i), 2, '0') + ' ' + randText(5));
				p.setDescription(randText(64));
				
				String bd = Randoms.randInt(2010, 2020) + "-" + Randoms.randInt(1, 12) + "-" + Randoms.randInt(1, 28);
				p.setBirthday(DateTimes.isoDateFormat().parse(bd));
				p.setGender(Randoms.randInt(1, 100) > 50 ? "F" : "M");
				
				int x = Randoms.randInt(0, origins.length - 1);
				p.setOrigin((String)origins[x]);
				
				x = Randoms.randInt(0, tempers.length - 1);
				p.setTemper((String)tempers[x]);

				x = Randoms.randInt(0, habits.length - 1);
				int x2 = Randoms.randInt(0, habits.length - 1);
				p.setHabits(Arrays.toLinkedSet((String)habits[x], (String)habits[x2]));

				p.setAmount(Randoms.randInt(1, 10));
				p.setPrice(new BigDecimal(Randoms.randInt(1000, 100000)));
				p.setShopName(Randoms.randString(10));
				
				String ct = Randoms.randInt(18, 22) + ":00:00";
				p.setShopCloseTime(DateTimes.isoTimeFormat().parse(ct));
				
				assist().initCreatedByFields(p);

				dao.insert(p);
				status.count++;
				printInfo("Add Pet: " + p.getId() + " / " + p.getName());
				
				// Pet Image
				PetImage pi = new PetImage();
				pi.setId(p.getId());
				pi.setPid(p.getId());
				pi.setImageName(f.getName());
				pi.setImageSize((int)f.length());
				pi.setImageData(Streams.toByteArray(f));
				assist().initCreatedByFields(pi);
				
				dao.insert(pi);
				status.count++;
				printInfo("Add PetImage: " + pi.getId() + " / " + pi.getImageName());
			}
		}
		catch (Exception e) {
			throw Exceptions.wrapThrow(e);
		}
	}
	
	private static final String CHARS = "日月火水木金土赤青黄紫黒白藍天地村香川河海湖洋左右宇宙羽雨峰影用意容易花果中華快楽";
	private String randText(int len) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < len; i++) {
			int x = Randoms.randInt(1, CHARS.length()) - 1;
			sb.append(CHARS.charAt(x));
		}

		return sb.toString();
	}
	
	private void initPetIndex(Dao dao) {
		Indexes indexes = context.getIoc().get(Indexes.class);
		if (!(indexes instanceof RevisionedIndexes)) {
			return;
		}
		
		Throwable ex = null;
		RevisionedIndexes ridxs = (RevisionedIndexes)indexes;
		Indexer idx = ridxs.newIndexer();
		DaoIterator<Pet> it = dao.iterate(Pet.class);
		try {
			List<IDocument> docs = new ArrayList<IDocument>();
			while (it.hasNext()) {
				Pet p = it.next();
				printInfo("Index Pet: " + p.getId() + " / " + p.getName());
				
				IDocument doc = idx.newDocument();
				PetIndexer.document(doc, p);
				docs.add(doc);
				
				if (docs.size() >= 100) {
					idx.inserts(docs);
					docs.clear();
				}
			}
			
			if (!docs.isEmpty()) {
				idx.inserts(docs);
			}
		}
		catch (Throwable e) {
			ex = e;
		}
		finally {
			it.close();
		}

		if (ex != null || getStatus().stop) {
			try {
				idx.drop();
			}
			catch (Throwable e) {
				log.error("Failed to drop index: " + idx, e);
			}
		}
		
		if (ex != null) {
			throw Exceptions.wrapThrow(ex);
		}
		
		if (!getStatus().stop) {
			ridxs.setIndexer(idx);
		}
	}
}