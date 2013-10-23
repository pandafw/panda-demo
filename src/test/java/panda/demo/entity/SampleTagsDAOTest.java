package panda.demo.entity;

import org.junit.After;
import org.junit.Before;

import panda.dao.entity.EntityDao;
import panda.demo.Application;
import panda.demo.action.ActionTestCase;

public class SampleTagsDAOTest extends ActionTestCase {
	private EntityDao<SampleTags> dao;
	
	@Before
	protected void setUp() throws Exception {
		dao = Application.get().getDaoClient().getEntityDao(SampleTags.class);
	}

	@After
	protected void tearDown() throws Exception {
	}

	public void testSelectByPrimaryKey() throws Exception {
		dao.fetch(1L);
	}

	public void testDeleteByPrimaryKey() throws Exception {
		dao.delete(1L);
	}

	public void testUpdateByPrimaryKey() throws Exception {
		SampleTags s1 = new SampleTags();
		s1.setId(1L);
		
		dao.update(s1);
	}

	public void testUpdateByPrimaryKeySelective() throws Exception {
		SampleTags s1 = new SampleTags();
		s1.setId(1L);
		s1.setBbcodeField("test");
		
		dao.updateIgnoreNull(s1);
	}
}
