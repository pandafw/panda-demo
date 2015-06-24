package panda.demo.action.images;

import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import panda.dao.Dao;
import panda.demo.action.WebAction;
import panda.demo.entity.SampleFile;
import panda.demo.entity.query.SampleFileQuery;
import panda.io.FileNames;
import panda.servlet.HttpServletSupport;


/**
 */
public class SampleFileFileAction extends WebAction {

	protected Long id;
	
	/**
	 * fileName
	 */
	protected String fileName;

	/**
	 * fileType
	 */
	protected String fileType;

	/**
	 * fileStream
	 */
	protected InputStream fileStream;

	/**
	 * @return the fileName
	 */
	public String getFileName() {
		return fileName;
	}

	/**
	 * @param fileName the fileName to set
	 */
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	/**
	 * @return the fileType
	 */
	public String getFileType() {
		if (fileType == null) {
			fileType = FileNames.getContentTypeFor(fileName);
		}
		return fileType;
	}

	/**
	 * @param fileType the fileType to set
	 */
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	/**
	 * @return the fileStream
	 */
	public InputStream getFileStream() {
		return fileStream;
	}

	/**
	 * @param fileStream the fileStream to set
	 */
	public void setFileStream(InputStream fileStream) {
		this.fileStream = fileStream;
	}

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	public void execute() throws Exception {
		HttpServletRequest req = getRequest();
		HttpServletResponse res = getResponse();
		
		if (id != null) {
			Dao dao = getDaoClient().getDao();
			SampleFileQuery sfq = new SampleFileQuery();
			sfq.id().equalTo(id).imageField().exclude();
			SampleFile sf = dao.fetch(sfq);
			if (sf != null && sf.getFileField() != null && sf.getFileField().getData() != null) {
				HttpServletSupport hsrs = new HttpServletSupport(req, res);
				hsrs.setFileName("SampleFile_File_" + id);
				hsrs.setContentLength(sf.getFileField().getData().length);
				hsrs.writeResponseHeader();
				hsrs.writeResponseData(sf.getFileField().getData());
				return;
			}
		}

		res.sendError(HttpServletResponse.SC_NOT_FOUND);
	}
}