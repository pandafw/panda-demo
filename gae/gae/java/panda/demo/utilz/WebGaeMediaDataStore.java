package panda.demo.utilz;

import panda.gems.media.store.MediaDataGaeStore;
import panda.gems.media.store.MediaDataStore;
import panda.ioc.annotation.IocBean;

@IocBean(type=MediaDataStore.class)
public class WebGaeMediaDataStore extends MediaDataGaeStore {

}
