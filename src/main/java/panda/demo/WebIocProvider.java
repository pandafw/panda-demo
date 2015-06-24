package panda.demo;

import java.util.Set;

import panda.ioc.IocLoader;
import panda.mvc.MvcConfig;
import panda.wing.AppIocLoader;
import panda.wing.AppIocProvider;

public class WebIocProvider extends AppIocProvider {
	public static class WebIocLoader extends AppIocLoader {
		public static class WebDefaultIocLoader extends AppDefaultIocLoader {
			public WebDefaultIocLoader(MvcConfig config) {
				super(config);
			}

			@Override
			protected Set<Object> getDefaults() {
				Set<Object> clss = super.getDefaults();
				
				return clss;
			}
		}
		
		public WebIocLoader(MvcConfig config, String... packages) {
			super(config, packages);
		}
		
		@Override
		protected void initAlias() {
			super.initAlias();
			alias.put(DEFAULT, WebDefaultIocLoader.class);
		}
	}
	
	@Override
	protected IocLoader getIocLoader(MvcConfig config, String ... args) {
		return new WebIocLoader(config, args);
	}
}

