package pojo;

// Generated Nov 22, 2016 5:58:15 PM by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

/**
 * Role generated by hbm2java
 */
public class Role implements java.io.Serializable {

	private Integer rolId;
	private String role;
	private Set registrations = new HashSet(0);

	public Role() {
	}

	public Role(String role, Set registrations) {
		this.role = role;
		this.registrations = registrations;
	}

	public Integer getRolId() {
		return this.rolId;
	}

	public void setRolId(Integer rolId) {
		this.rolId = rolId;
	}

	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Set getRegistrations() {
		return this.registrations;
	}

	public void setRegistrations(Set registrations) {
		this.registrations = registrations;
	}

}
