package panda.demo.action.petimage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import panda.dao.Dao;
import panda.dao.entity.EntityDao;
import panda.demo.action.WebAction;
import panda.demo.entity.PetImage;
import panda.demo.entity.query.PetImageQuery;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.servlet.HttpServletResponser;

@At("/petimage")
public class PetImageDownloadAction extends WebAction {
	@At
	public void iicon(@Param("id") Long id) throws Exception {
		HttpServletResponse res = getResponse();
		
		if (id != null && id > 0) {
			PetImageQuery piq = new PetImageQuery();
			piq.pid().equalTo(id).limit(1);
			
			Dao dao = getDaoClient().getDao();
			PetImage pi = dao.fetch(piq);
			if (pi != null && pi.getImageData() != null) {
				writeImage(pi);
				return;
			}
		}

		res.sendError(HttpServletResponse.SC_NOT_FOUND);
	}

	@At
	public void idownload(@Param("id") Long id) throws Exception {
		HttpServletResponse res = getResponse();
		
		if (id != null && id > 0) {
			EntityDao<PetImage> dao = getDaoClient().getEntityDao(PetImage.class);
			PetImage pi = dao.fetch(id);
			if (pi != null && pi.getImageData() != null) {
				writeImage(pi);
				return;
			}
		}

		res.sendError(HttpServletResponse.SC_NOT_FOUND);
	}

	private void writeImage(PetImage pi) throws Exception {
		HttpServletRequest req = getRequest();
		HttpServletResponse res = getResponse();

		HttpServletResponser hsrs = new HttpServletResponser(req, res);
		hsrs.setFileName("PetImage_Image_" + pi.getId());
		hsrs.setContentType("image");
		hsrs.setContentLength(pi.getImageData().length);
		hsrs.writeHeader();
		hsrs.writeBytes(pi.getImageData());
	}
}

