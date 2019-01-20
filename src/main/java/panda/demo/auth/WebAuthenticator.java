package panda.demo.auth;

import panda.ioc.annotation.IocBean;
import panda.app.auth.UserAuthenticator;
import panda.app.auth.AppAuthenticator;

@IocBean(type=UserAuthenticator.class)
public class WebAuthenticator extends AppAuthenticator {
}
