package panda.demo.action;

import panda.dao.Dao;
import panda.demo.AppTest;


public abstract class BaseTestCase {
	protected Dao getDao() {
		return AppTest.app.getDao();
	}
}
