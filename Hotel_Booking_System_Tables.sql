CREATE TABLE EMPLOYEE_PROJECT (
 ssn                          NUMBER(15)                NOT NULL                  PRIMARY KEY            ,
 birth_date                   DATE                      NOT NULL                                         ,
 first_name                   VARCHAR2(10)              NOT NULL                                         ,
 last_name                    VARCHAR2(10)              NOT NULL                                         ,
 sex                          VARCHAR2(6)                                                                ,
 address                      VARCHAR2(30)                                                               ,
 supervisor_snn               NUMBER(4)      REFERENCES         employee_project            (ssn)        ,
 salary                       NUMBER(9)                                                                  ,
 emp_job                      VARCHAR2(6) 
);
CREATE  TABLE  CUSTOMER_PROJECT (
customer_id               number(5)                          primary key                    ,
first_name                varchar(8)                                                        , 
last_name                 varchar(8)                                                        ,
email                     varchar(25)                        unique                         ,
ssn                       number(15)                         unique                         ,
address                   varchar(25)                                                       ,
sex                       char(5)                            not null                       ,
birth_date                date                               not null
);
CREATE TABLE ROOM_PRICE_PROJECT (
type                     varchar(20)                 not null                                     ,
class                    varchar(20)                 not null                                     ,
price                    number(6,2)                 not null                                      ,
primary key ( type , class)
);

CREATE TABLE ROOM_PROJECT (
room_Password                  number(10)                                    primary key                        ,
room_number                    number(5)                                     not null               unique      ,
room_view                      varchar(20)                                                                      ,
statues                        varchar(20)                                                                      ,
room_level                     number(2)                                     not null                           ,
room_type                     varchar(20)                                                                       ,
room_class                    varchar(20)                                                                       ,
CONSTRAINT fk_ROOM_to_ROOM_PRICE FOREIGN KEY (room_type,room_class) references room_price_project(type,class)
);

CREATE TABLE DEPENDENT_PROJECT (
 name                                 varchar2(24)                                                                                             ,
 customer_id                          number(9)             REFERENCES      customer_project       (customer_id)     ,
 sex                                  varchar2(14)                                                                                            ,
 relation                             varchar2(24)                                                                                           ,
 birth_date                           DATE                      NOT NULL                                                               ,  
 primary key (name , customer_id)
);
CREATE TABLE SERVICE_PROJECT (
 service_id                        number(30)                                                           ,
 cost                              number(6)                                                            ,
 type                              varchar2(30)                                                        ,
 employee_ssn                      number(30)                   REFERENCES              employee_project             (ssn)            ,
 customer_id                       number(5)                   REFERENCES              customer_project              (customer_id)    ,
 primary key(employee_ssn,service_id,customer_id)
);


CREATE TABLE BOOK_PROJECT (
Room_Password	                   NUMBER(6)                REFERENCES 	     room_project	  (room_password)      ,
customer_id                      NUMBER(5)                REFERENCES       customer_project      (customer_id)     ,
num_of_rooms                     NUMBER(4)                                                                                                              ,
START_DATE                       DATE                            NOT NULL                                                                            ,
END_DATE                         DATE                            NOT NULL                                 
);

CREATE TABLE BILL_PROJECT (
bill_id                   number(15)               primary key       ,
discount                  number(3)                    not null               
);
CREATE TABLE PAY_PROJECT (
total_price             number(10)                    not null   ,
bill_id                 number(15) 		  references   	    bill_project  		    (bill_id)                  , 
customer_id             number(5)         references      customer_project       (customer_id)             ,
primary key(customer_id,bill_id)
);


CREATE  TABLE  CUSTOMER_PHONE_PROJECT (
Phone                           number (12)                                                      ,
customer_id                     number(5)   references     customer_project    (customer_id)      ,
primary key (phone,customer_id)
);

alter table ROOM_PRICE_PROJECT
add    (discount number(4));





 
