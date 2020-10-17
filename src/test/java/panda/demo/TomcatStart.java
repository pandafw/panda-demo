package panda.demo;

import panda.app.TomcatLauncher;
import panda.io.Files;

public class TomcatStart {
	public static void main(String[] args) {
		try {
			Files.makeDirs("web/WEB-INF/_sqlite");

			System.setProperty("tomcat.util.http.parser.HttpParser.requestTargetAllow", "|{}&");
			TomcatLauncher.main(new String[] { 
					"--port", "8080",
					"--sslport", "8443",
					"--keystoreFile", "web/WEB-INF/keystore.pfx",
					"--keystorePass", "trustme",
					"--keystoreType", "PKCS12",
//					"--path", "pdemo",
					"--relaxedPathChars", "[]|{}&",
					"--relaxedQueryChars", "[]|{}&",
					"--temp-directory", "out/tomcat",
					"--uri-encoding", "UTF-8",
					"--use-body-encoding-for-uri",
					"web" });
		}
		catch (Throwable e) {
			e.printStackTrace();
		}
	}
}
