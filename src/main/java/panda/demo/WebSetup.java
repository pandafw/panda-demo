package panda.demo;


import panda.dao.DaoClient;
import panda.demo.entity.SampleDate;
import panda.demo.entity.SampleFile;
import panda.demo.entity.SampleJoin;
import panda.demo.entity.SampleTags;
import panda.demo.entity.SampleUnique;
import panda.ioc.annotation.IocBean;
import panda.ioc.annotation.IocInject;
import panda.mvc.Setup;
import panda.mvc.annotation.IocBy;
import panda.mvc.annotation.Modules;
import panda.wing.AppSetup;

@Modules(packages={ "panda.wing.action", "panda.wing.util.pdf", "panda.wing.auth" }, scan = true)
@IocBy(type = WebIocProvider.class, args = { "*default", "*json", "mvc-context.json" })
@IocBean(type = Setup.class)
public class WebSetup extends AppSetup {
	@IocInject
	private DaoClient daoClient;
	
	public static final Class[] ENTITIES = {
		SampleDate.class,
		SampleFile.class,
		SampleTags.class,
		SampleUnique.class,
		SampleJoin.class
	};
	
	/**
	 * initialize
	 */
	@Override
	public void initialize() {
		super.initialize();
		
		initEntities();
	}

	@SuppressWarnings("unchecked")
	private void initEntities() {
		//initialize entities
		for (Class c : ENTITIES) {
			daoClient.getEntity(c);
		}
	}

	/**
	 * destroy
	 */
	@Override
	public void destroy() {
		super.destroy();
	}
}
