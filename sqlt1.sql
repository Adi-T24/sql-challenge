DROP TABLE IF EXISTS Dept_Manager;

CREATE TABLE Dept_Manager (
    employee_number INT,
    department_number INT,
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (employee_number, department_number),
    FOREIGN KEY (employee_number) REFERENCES Employee(employee_number),
    FOREIGN KEY (department_number) REFERENCES Department(department_number)
);
DROP TABLE IF EXISTS Dept_Employee;

CREATE TABLE Dept_Employee (
    employee_number INT,
    department_number INT,
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (employee_number, department_number),
    FOREIGN KEY (employee_number) REFERENCES Employee(employee_number),
    FOREIGN KEY (department_number) REFERENCES Department(department_number)
);

DROP TABLE IF EXISTS Salaries;
CREATE TABLE Salaries (
    employee_number INT,
    salary DECIMAL(10, 2),
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (employee_number, from_date),
    FOREIGN KEY (employee_number) REFERENCES Employee(employee_number)
);


DROP TABLE IF EXISTS Titles;

CREATE TABLE Titles (
    employee_number INT,
    title VARCHAR(255),
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (employee_number, title, from_date),
    FOREIGN KEY (employee_number) REFERENCES Employee(employee_number)
);
