package panda.demo.action.images;

import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import panda.dao.Dao;
import panda.demo.action.AbstractAction;
import panda.demo.entity.SampleFile;
import panda.demo.entity.query.SampleFileQuery;
import panda.exts.struts2.util.StrutsContextUtils;
import panda.io.FileNames;
import panda.servlet.HttpServletSupport;


/**
 */
public class SampleFileImageAction extends AbstractAction {

	/**
	 * NOIMG = "noimg";
	 */
	protected final static String NOIMG = "noimg";

	protected Long id;
	
	/**
	 * imageName
	 */
	protected String imageName;

	/**
	 * imageType
	 */
	protected String imageType;

	/**
	 * imageSize
	 */
	protected Integer imageSize;
	
	/**
	 * imageStream
	 */
	protected InputStream imageStream;

	/**
	 * @return the imageName
	 */
	public String getImageName() {
		return imageName;
	}

	/**
	 * @param imageName the imageName to set
	 */
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	/**
	 * @return the imageType
	 */
	public String getImageType() {
		if (imageType == null) {
			imageType = FileNames.getContentTypeFor(imageName);
		}
		return imageType;
	}

	/**
	 * @param imageType the imageType to set
	 */
	public void setImageType(String imageType) {
		this.imageType = imageType;
	}

	/**
	 * @return the imageSize
	 */
	public int getImageSize() {
		return imageSize;
	}

	/**
	 * @param imageSize the imageSize to set
	 */
	public void setImageSize(int imageSize) {
		this.imageSize = imageSize;
	}

	/**
	 * @return the imageStream
	 */
	public InputStream getImageStream() {
		return imageStream;
	}

	/**
	 * @param imageStream the imageStream to set
	 */
	public void setImageStream(InputStream imageStream) {
		this.imageStream = imageStream;
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

	/**
	 * execute
	 * @return result name
	 * @throws Exception if an error occurs
	 */
	public String execute() throws Exception {
		HttpServletRequest req = StrutsContextUtils.getServletRequest();
		HttpServletResponse res = StrutsContextUtils.getServletResponse();
		
		if (id != null) {
			Dao dao = getDaoClient().getDao();
			SampleFileQuery sfq = new SampleFileQuery();
			sfq.id().equalTo(id).fileField().exclude();
			SampleFile sf = dao.fetch(sfq);
			if (sf != null && sf.getImageField() != null && sf.getImageField().getData() != null) {
				HttpServletSupport hsrs = new HttpServletSupport(req, res);
				hsrs.setFileName("SampleFile_Image_" + id);
				hsrs.setContentType("image");
				hsrs.setContentLength(sf.getImageField().getData().length);
				hsrs.writeResponseHeader();
				hsrs.writeResponseData(sf.getImageField().getData());
				return NONE;
			}
		}

		res.sendError(HttpServletResponse.SC_NOT_FOUND);
		return NONE;
	}
}