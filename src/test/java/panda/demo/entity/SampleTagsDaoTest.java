package panda.demo.entity;

import panda.demo.action.BaseTestCase;

public class SampleTagsDaoTest extends BaseTestCase {
	public void testSelectByPrimaryKey() throws Exception {
		getDao().fetch(SampleTags.class, 1L);
	}

	public void testDeleteByPrimaryKey() throws Exception {
		getDao().delete(SampleTags.class, 1L);
	}

	public void testUpdateByPrimaryKey() throws Exception {
		SampleTags s1 = new SampleTags();
		s1.setId(1L);
		
		getDao().update(s1);
	}

	public void testUpdateByPrimaryKeySelective() throws Exception {
		SampleTags s1 = new SampleTags();
		s1.setId(1L);
		s1.setBbcodeField("test");
		
		getDao().updateIgnoreNull(s1);
	}
}
