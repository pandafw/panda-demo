package panda.demo.entity;

import org.junit.Test;

import panda.demo.action.BaseTestCase;

public class SampleTagsDaoTest extends BaseTestCase {
	@Test
	public void testSelectByPrimaryKey() throws Exception {
		getDao().fetch(SampleTags.class, 1L);
	}

	@Test
	public void testDeleteByPrimaryKey() throws Exception {
		getDao().delete(SampleTags.class, 1L);
	}

	@Test
	public void testUpdateByPrimaryKey() throws Exception {
		SampleTags s1 = new SampleTags();
		s1.setId(1L);
		
		getDao().update(s1);
	}

	@Test
	public void testUpdateByPrimaryKeySelective() throws Exception {
		SampleTags s1 = new SampleTags();
		s1.setId(1L);
		s1.setBbcodeField("test");
		
		getDao().updateIgnoreNull(s1);
	}
}
