package panda.demo;

import org.junit.Test;

import panda.io.Settings;
import panda.mvc.filter.ResponseHeaderFilter;

public class SettingsTest {

	private Object top;
	
	/**
	 * @return the top
	 */
	public Object getTop() {
		return top;
	}

	/**
	 * @param top the top to set
	 */
	public void setTop(Object top) {
		this.top = top;
	}

	@Test
	public void testResourceTemplateJA() throws Exception {
		new Settings("app.properties");
	}

	@Test
	public void testResponseHeaderFilter() throws Exception {
		System.out.println(ResponseHeaderFilter.class);
	}
}
