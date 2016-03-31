package panda.demo.action.samplefile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import panda.dao.Dao;
import panda.demo.action.BaseAction;
import panda.demo.entity.SampleFile;
import panda.demo.entity.query.SampleFileQuery;
import panda.mvc.annotation.At;
import panda.mvc.annotation.param.Param;
import panda.servlet.HttpServletSupport;


/**
 */
@At("/samplefile")
public class SampleFileDownloadAction extends BaseAction {
	@At
	public void fdownload(@Param("id") Long id) throws Exception {
		HttpServletRequest req = getRequest();
		HttpServletResponse res = getResponse();
		
		if (id != null) {
			Dao dao = getDaoClient().getDao();
			SampleFileQuery sfq = new SampleFileQuery();
			sfq.id().equalTo(id).imageData().exclude();
			SampleFile sf = dao.fetch(sfq);
			if (sf != null && sf.getFileData() != null) {
				HttpServletSupport hsrs = new HttpServletSupport(req, res);
				hsrs.setFileName("SampleFile_File_" + id);
				hsrs.setContentLength(sf.getFileData().length);
				hsrs.writeResponseHeader();
				hsrs.writeResponseData(sf.getFileData());
				return;
			}
		}

		res.sendError(HttpServletResponse.SC_NOT_FOUND);
	}

	@At
	public void idownload(@Param("id") Long id) throws Exception {
		HttpServletRequest req = getRequest();
		HttpServletResponse res = getResponse();
		
		if (id != null && id > 0) {
			Dao dao = getDaoClient().getDao();
			SampleFileQuery sfq = new SampleFileQuery();
			sfq.id().equalTo(id).fileData().exclude();
			SampleFile sf = dao.fetch(sfq);
			if (sf != null && sf.getImageData() != null) {
				HttpServletSupport hsrs = new HttpServletSupport(req, res);
				hsrs.setFileName("SampleFile_Image_" + id);
				hsrs.setContentType("image");
				hsrs.setContentLength(sf.getImageData().length);
				hsrs.writeResponseHeader();
				hsrs.writeResponseData(sf.getImageData());
				return;
			}
		}

		res.sendError(HttpServletResponse.SC_NOT_FOUND);
	}
}

