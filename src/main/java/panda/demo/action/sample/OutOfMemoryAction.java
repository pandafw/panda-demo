package panda.demo.action.sample;

import java.util.ArrayList;
import java.util.List;

import panda.io.Files;
import panda.lang.Numbers;
import panda.lang.Threads;
import panda.mvc.annotation.At;
import panda.wing.action.BaseTaskAction;

@At("/oom")
public class OutOfMemoryAction extends BaseTaskAction {
	private final List<byte[]> data = new ArrayList<byte[]>(); 

	@Override
	protected void doExecute() {
		long size = 0;
		while (!isStop()) {
			data.add(new byte[Numbers.MB]);
			size += Numbers.MB;
			
			printInfo("Allocate memory: " + Files.toDisplaySize(size));
			Threads.safeSleep(100);
		}
	}
}
