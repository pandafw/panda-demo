package panda.demo.utilz;

import panda.gae.mvc.vfs.MvcGaeFileStore;
import panda.ioc.annotation.IocBean;
import panda.vfs.FileStore;

@IocBean(type=FileStore.class)
public class WebGaeFileStore extends MvcGaeFileStore {

}
