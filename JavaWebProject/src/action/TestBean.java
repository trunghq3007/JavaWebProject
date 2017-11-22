package action;

/**
 * @description:
 * @author: Admin
 * @time: 5:46:25 PM
 * @date: Nov 22, 2017
 */
public class TestBean {
	private String message = "No message specified";

	 /**
	 * @description: 
	 * @author:Admin CMC Corporation
	 * @create date:Nov 22, 2017
	 * @modifier:Admin
	 * @modifined date: Nov 22, 2017
	 * @exception:
	 * @return
	 */
	public String getMessage() {
		return (message);
	}

	 /**
	 * @description: 
	 * @author:Admin CMC Corporation
	 * @create date:Nov 22, 2017
	 * @modifier:Admin
	 * @modifined date: Nov 22, 2017
	 * @exception:
	 * @param message
	 */
	public void setMessage(String message) {
		this.message = message;
	}
}
