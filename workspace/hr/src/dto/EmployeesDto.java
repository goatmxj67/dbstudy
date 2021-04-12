package dto;

import java.sql.Date;

import lombok.Data;

@Data
public class EmployeesDto {

	// field (칼럼명 snake case -> 필드명 camel case)
	private int employeeId; // EMPLOYEE_ID
	private String firstName; // FIRST_NAME
	private String lastName; // LAST_NAME
	private String email; // EMAIL
	private String phoneNumber; // PHONE_NUMBER
	private Date hireDate; // HIRE_DATE
	private String jobId; // JOB_ID
	private double salary; // SALARY
	private double commissionPct; // COMMISSION_PCT
	private int managerId; // MANAGER_ID
	private int departmentId; // DEPARTMENT_ID

	// departments 테이블
	private String departmentName; // DEPARTMENT_ID

	public EmployeesDto() {
	}

	public EmployeesDto(int employeeId, String firstName, String lastName, String email, String phoneNumber,
			Date hireDate, String jobId, double salary, double commissionPct, int managerId, int departmentId,
			String departmentName) {
		super();
		this.employeeId = employeeId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.hireDate = hireDate;
		this.jobId = jobId;
		this.salary = salary;
		this.commissionPct = commissionPct;
		this.managerId = managerId;
		this.departmentId = departmentId;
		this.departmentName = departmentName;
	}

}