package customtag;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class TodayTag extends SimpleTagSupport {

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.jsp.tagext.SimpleTagSupport#doTag()
	 */
	@Override
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();// returns the instance of JspWriter
		try {
			out.print(Calendar.getInstance().getTime());// printing date and time using JspWriter
		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
