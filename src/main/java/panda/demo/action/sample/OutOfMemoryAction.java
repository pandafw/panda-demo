package panda.demo.action.sample;

import java.util.ArrayList;
import java.util.List;

import panda.exts.struts2.actions.AbstractSyncWorkAction;
import panda.io.Files;
import panda.lang.Collections;
import panda.lang.Numbers;
import panda.lang.Objects;

public class OutOfMemoryAction extends AbstractSyncWorkAction {
	private static final List<byte[]> data = Collections.synchronizedList(new ArrayList<byte[]>()); 

	@Override
	public String stop() {
		data.clear();
		return super.stop();
	}
	
	@Override
	protected void doExecute() {
		long size = 0;
		while (!isStop()) {
			data.add(new byte[Numbers.MB * 10]);
			size += Numbers.MB * 10;
			
			printInfo("Allocate memory: " + Files.toDisplaySize(size));
			Objects.safeSleep(100);
		}
	}
}
