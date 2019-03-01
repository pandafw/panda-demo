package panda.demo.utilz;

import panda.ioc.annotation.IocBean;
import panda.mvc.vfs.MvcGaeFileStore;
import panda.vfs.FileStore;

@IocBean(type=FileStore.class)
public class WebGaeFileStore extends MvcGaeFileStore {

}
