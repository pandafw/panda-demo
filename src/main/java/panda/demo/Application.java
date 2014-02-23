package panda.demo;

import panda.aems.ServletApplet;
import panda.demo.entity.SampleDate;
import panda.demo.entity.SampleFile;
import panda.demo.entity.SampleJoin;
import panda.demo.entity.SampleTags;
import panda.demo.entity.SampleUnique;

/**
 * Application
 */
public class Application extends ServletApplet {

	@Override
	protected void initialize() throws Exception {
		super.initialize();
		
		//initialize entities
		getDaoClient().getEntity(SampleDate.class);
		getDaoClient().getEntity(SampleFile.class);
		getDaoClient().getEntity(SampleJoin.class);
		getDaoClient().getEntity(SampleTags.class);
		getDaoClient().getEntity(SampleUnique.class);
	}
}
