package panda.demo.action.sample;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

import panda.lang.Numbers;
import panda.mvc.annotation.At;

@At("/weakref")
public class WeakRefAction extends RefTestAction {
	@Override
	protected Reference<byte[]> newReference() {
		return new WeakReference<byte[]>(new byte[Numbers.MB]);
	}
}
