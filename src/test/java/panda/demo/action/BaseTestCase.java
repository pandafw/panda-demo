package panda.demo.action;

import panda.aems.test.ActionTestCase;
import panda.demo.Application;

public abstract class BaseTestCase extends ActionTestCase {
	static {
		init(Application.class);
	}
}
