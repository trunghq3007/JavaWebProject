package customtag;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class CustomTagBody extends SimpleTagSupport {
	StringWriter sw = new StringWriter();

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.jsp.tagext.SimpleTagSupport#doTag()
	 */
	@Override
	public void doTag() throws JspException, IOException {
		// TODO Auto-generated method stub
		getJspBody().invoke(sw);
		getJspContext().getOut().println(sw.toString());
	}

}
