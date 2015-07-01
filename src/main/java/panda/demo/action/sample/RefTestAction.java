package panda.demo.action.sample;

import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.List;

import panda.io.Files;
import panda.lang.Numbers;
import panda.lang.Threads;
import panda.wing.action.BaseTaskAction;

public abstract class RefTestAction extends BaseTaskAction {
	private final List<Reference<byte[]>> data = new ArrayList<Reference<byte[]>>(); 

	private int getMemSize() {
		int size = 0;
		
		List<Reference<byte[]>> ds = new ArrayList<Reference<byte[]>>();
		
		for (Reference<byte[]> r : data) {
			if (r.get() == null) {
				ds.add(r);
			}
			else {
				size += r.get().length;
			}
		}
		
		for (Reference<byte[]> r : ds) {
			data.remove(r);
		}
		
		return size;
	}
	
	protected Reference<byte[]> newReference() {
		return new SoftReference<byte[]>(new byte[Numbers.MB]);
	}
	
	@Override
	protected void doExecute() {
		while (!isStop()) {
			data.add(newReference());
			
			int size = getMemSize();
			printInfo("Allocate memory: " + Files.toDisplaySize(size));
			Threads.safeSleep(1000);
		}
	}
}
