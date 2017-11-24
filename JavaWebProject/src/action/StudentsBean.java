/**
 * 
 */
package action;

import java.io.Serializable;

/**
 * @author Ha Quang Trung
 *
 */

/*
 * It has a default, no-argument constructor
 * It should implement the Serializable interface 
 * It has a list of properties for reading or writing It
 * has a list of getter and setter methods for the properties
 */
	
public class StudentsBean implements Serializable {
	private String firstName = null;
	private String lastName = null;
	private int age = 0;

	public StudentsBean() {
		super();
	}

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName
	 *            the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName
	 *            the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the age
	 */
	public int getAge() {
		return age;
	}

	/**
	 * @param age
	 *            the age to set
	 */
	public void setAge(int age) {
		this.age = age;
	}

}
