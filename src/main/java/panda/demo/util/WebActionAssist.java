package panda.demo.util;

import panda.demo.entity.SampleFile;
import panda.io.Files;
import panda.ioc.Scope;
import panda.ioc.annotation.IocBean;
import panda.mvc.util.ActionAssist;
import panda.wing.constant.VC;
import panda.wing.util.AppActionAssist;


@IocBean(type=ActionAssist.class, scope=Scope.REQUEST)
public class WebActionAssist extends AppActionAssist {
	@Override
	public boolean isDebugEnabled() {
		return isLoopbackIP();
	}

	@Override
	public long getLoginUserId() {
		return VC.SYSTEM_UID;
	}

	public String getFileLink(SampleFile sf){
		if (sf == null || sf.getFileSize() <= 0) {
			return "";
		}
		return "<a href=\"" + context.getBase() + "/samplefile/fdownload?id=" + sf.getId() + "\">"
				+ "<i class=\"fa fa-paperclip\"></i> " 
				+ Files.toDisplaySize(sf.getFileSize())
				+ "</a>";
	}
	
	public String getImageLink(SampleFile sf) {
		if (sf == null || sf.getImageSize() <= 0) {
			return "";
		}
		return "<a href=\"" + context.getBase() + "/samplefile/idownload?id=" + sf.getId() + "\">"
				+ "<i class=\"fa fa-picture-o\"></i> " 
				+ Files.toDisplaySize(sf.getImageSize())
				+ "</a>";
	}
}
