package panda.demo.action.sample;

import java.util.ArrayList;
import java.util.List;

import panda.exts.struts2.actions.AbstractSyncWorkAction;
import panda.io.Files;
import panda.lang.Numbers;
import panda.lang.Objects;

public class OutOfMemoryAction extends AbstractSyncWorkAction {
	private final List<byte[]> data = new ArrayList<byte[]>(); 

	@Override
	protected void doExecute() {
		long size = 0;
		while (!isStop()) {
			data.add(new byte[Numbers.MB]);
			size += Numbers.MB;
			
			printInfo("Allocate memory: " + Files.toDisplaySize(size));
			Objects.safeSleep(100);
		}
	}
}
