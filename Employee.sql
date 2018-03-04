create table Emlpoyee (
	Record_ID integer NOT NULL,
	First_name char(20) NOT NULL,
	Last_name char (20) NOT NULL,
	Emp_ID integer NOT NULL,
	Active char(1) Check (Active in('Y', 'N')) NOT NULL,
	Role char(20) Check (Role in('General Manager', 'Shift Manager', 'Cashier')) NOT NULL,
	Manager integer,
	Password char(20) NOT NULL,
	Created_ON timestamp without time zone NOT NULL DEFAULT now(),
	CONSTRAINT employee_key PRIMARY KEY (Record_ID)
) 	WITH (
 	OIDS=FALSE
);