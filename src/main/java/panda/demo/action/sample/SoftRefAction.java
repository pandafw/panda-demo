package panda.demo.action.sample;

import java.lang.ref.Reference;
import java.lang.ref.SoftReference;

import panda.lang.Numbers;
import panda.mvc.annotation.At;


@At("/softref")
public class SoftRefAction extends RefTestAction {
	@Override
	protected Reference<byte[]> newReference() {
		return new SoftReference<byte[]>(new byte[Numbers.MB]);
	}
}
