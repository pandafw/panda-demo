package panda.demo.utilz;

import panda.app.media.MediaDataGaeStore;
import panda.app.media.MediaDataStore;
import panda.ioc.annotation.IocBean;

@IocBean(type=MediaDataStore.class)
public class WebGaeMediaDataStore extends MediaDataGaeStore {

}
