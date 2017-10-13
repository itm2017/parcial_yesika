

create table COURSES (
  id int,
  name varchar2(255),
  code varchar2(255),
  date_start date,
  date_end date,
  CONSTRAINT PK_id_courses PRIMARY KEY(id)
)

create table STUDENTS (
  id int,
  first_name varchar2(255),
  last_name varchar2(255),
  date_of_birth date,
  city varchar2(255),
  address varchar2(255),
  CONSTRAINT PK_id_students PRIMARY KEY(id)
)


create table ATTENDANCE (
  id int,
  student_id int,
  course_id int,
  attendance_date date,
  CONSTRAINT PK_id_attendance PRIMARY KEY(id)
)

create table ANSWERS (
  id int,
  number_of_question varchar2(255),
  answer varchar2(255),
  CONSTRAINT PK_id_answers PRIMARY KEY(id)
)

