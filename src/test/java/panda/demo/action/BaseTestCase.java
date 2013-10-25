package panda.demo.action;

import panda.aems.test.AppletTestCase;
import panda.demo.Application;

/**
 * ActionTestCase
 */
public abstract class BaseTestCase extends AppletTestCase {
	static {
		init(Application.class);
	}
}
