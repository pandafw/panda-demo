package panda.demo.action.sample;

import panda.demo.action.WebAction;
import panda.mvc.View;
import panda.mvc.annotation.At;
import panda.mvc.annotation.view.Ok;

@At("/mfupd")
public class MultiFileUploadAction extends WebAction {
	@At("")
	@Ok(View.SFTL)
	public void ftl() {
	}
}
