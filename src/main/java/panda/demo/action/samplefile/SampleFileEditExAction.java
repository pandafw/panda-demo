package panda.demo.action.samplefile;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import panda.demo.entity.SampleFile;
import panda.lang.Exceptions;
import panda.mvc.annotation.At;

@At("/samplefile")
public class SampleFileEditExAction extends SampleFileEditAction {
	/**
	 * Constructor
	 */
	public SampleFileEditExAction() {
	}

	private void setFileData(SampleFile data) {
		try {
			if (data.getFileItem() != null && data.getFileItem().isExists()) {
				data.setFileData(data.getFileItem().getData());
				data.setFileSize(data.getFileData().length);
			}
			if (data.getImageItem() != null && data.getImageItem().isExists()) {
				data.setImageData(data.getImageItem().getData());
				data.setImageSize(data.getImageData().length);
			}
		}
		catch (IOException e) {
			throw Exceptions.wrapThrow(e);
		}
	}

	@Override
	protected SampleFile startInsert(SampleFile data) {
		data =  super.startInsert(data);
		data.setFileSize(0);
		data.setImageSize(0);
		setFileData(data);
		return data;
	}

	@Override
	protected void afterInsert(SampleFile data) {
		super.afterInsert(data);
		
		data.setFileItem(null);
		data.setImageItem(null);
	}

	@Override
	protected SampleFile startUpdate(SampleFile data, SampleFile sd) {
		data =  super.startUpdate(data, sd);
		data.setFileSize(sd.getFileSize());
		data.setImageSize(sd.getImageSize());
		setFileData(data);
		return data;
	}

	@Override
	protected Set<String> getUpdateFields(SampleFile data, SampleFile sd) {
		Set<String> ufs = new HashSet<String>(super.getUpdateFields(data, sd));
		if (data.getFileData() != null) {
			ufs.add(SampleFile.FILE_DATA);
		}
		if (data.getImageData() != null) {
			ufs.add(SampleFile.IMAGE_DATA);
		}
		return ufs;
	}

	@Override
	protected void afterUpdate(SampleFile data, SampleFile sd) {
		super.afterUpdate(data, sd);
		
		data.setFileItem(null);
		data.setImageItem(null);
	}

}

