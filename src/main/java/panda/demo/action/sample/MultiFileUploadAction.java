package panda.demo.action.sample;

import panda.demo.action.WebAction;
import panda.lang.Arrays;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.To;
import panda.mvc.annotation.param.Param;
import panda.vfs.FileItem;

@At("/mfupd")
public class MultiFileUploadAction extends WebAction {
	@At("")
	@To(View.SFTL)
	public void ftl(@Param("files") FileItem[] files) {
		if (Arrays.isEmpty(files)) {
			return;
		}
		
		for (FileItem f : files) {
			addActionMessage(f.getId() + ": " + f.getName() + " [" + f.getSize() + "] " + f.isExists());
		}
	}
}
