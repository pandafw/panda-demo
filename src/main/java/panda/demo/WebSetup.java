package panda.demo;


import panda.app.AppHelper;
import panda.app.AppIocProvider;
import panda.app.AppSetup;
import panda.app.constant.AUTH;
import panda.app.constant.VAL;
import panda.dao.Dao;
import panda.dao.DaoClient;
import panda.dao.entity.EntityDao;
import panda.demo.entity.Pet;
import panda.demo.entity.PetCategory;
import panda.demo.entity.PetImage;
import panda.demo.entity.User;
import panda.demo.entity.query.UserQuery;
import panda.idx.Indexes;
import panda.io.Settings;
import panda.ioc.annotation.IocBean;
import panda.ioc.annotation.IocInject;
import panda.log.Log;
import panda.log.Logs;
import panda.mvc.Setup;
import panda.mvc.annotation.IocBy;
import panda.mvc.annotation.Modules;

@Modules(packages={ "panda.app.action" }, scan = true)
@IocBy(type = AppIocProvider.class, args = { "*json", "mvc-context.json", "*default" })
@IocBean(type = Setup.class)
public class WebSetup extends AppSetup {
	private static final Log log = Logs.getLog(WebSetup.class);
	
	@IocInject
	private DaoClient daoClient;
	
	@IocInject
	private Settings settings;
	
	@IocInject
	private Indexes indexes;
	
	public static final Class[] ENTITIES = {
		User.class,
		PetCategory.class,
		Pet.class,
		PetImage.class
	};
	
	/**
	 * initialize
	 */
	@Override
	public void initialize() {
		super.initialize();
		
		initEntities();
		
		initDatabase();
		
		initSuperUser();
	}

	@SuppressWarnings("unchecked")
	private void initEntities() {
		//initialize entities
		for (Class c : ENTITIES) {
			daoClient.getEntity(c);
		}
	}

	private void initDatabase() {
		try {
			Dao dao = daoClient.getDao();
			if (dao.exists(User.class)) {
				return;
			}
			
			log.info("Initialize database");

			AppHelper.createDefaultTables(dao);
			AppHelper.createTables(dao, WebSetup.ENTITIES);
		}
		catch (Exception e) {
			log.error("Failed to init database", e);
		}
	}

	private void initSuperUser() {
		try {
			EntityDao<User> udao = daoClient.getEntityDao(User.class);
			UserQuery uq = new UserQuery();
			uq.role().equalTo(AUTH.SUPER).limit(1);
			if (udao.fetch(uq) != null) {
				return;
			}
			
			User u = new User();
			u.setEmail(settings.getProperty("super.email", "demo.pandafw@gmail.com"));
			u.setName(settings.getProperty("super.username", "SUPER"));
			u.setPassword(settings.getProperty("super.password", "trustme"));
			u.setRole(AUTH.SUPER);
			u.setStatus(VAL.STATUS_ACTIVE);
			
			log.info("Create default super user: " + u.getEmail() + "/" + u.getPassword());
			udao.insert(u);
		}
		catch (Exception e) {
			log.error("Failed to init super user", e);
		}
	}
	
	/**
	 * destroy
	 */
	@Override
	public void destroy() {
		super.destroy();
	}
}
