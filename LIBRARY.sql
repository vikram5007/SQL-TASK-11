create table books(
book_id int primary key not null,
book_name varchar(50) unique
)

create table borrowers_details(
c_id int primary key,
c_name varchar(30),
book_id int default 1 foreign key(book_id) references dbo.books(book_id) on update set default,

)

create table management_table(
stock_id int primary key,
book_id int default 1 foreign key(book_id)references dbo.books(book_id)on update set default,
book_stock int ,
 
)

insert into books values(1, 'The Catcher in the Rye'),
    (2, 'Nine Stories'),
    (3, 'Franny and Zooey'),
    (4, 'The Great Gatsby'),
    (5, 'Tender id the Night'),
    (6, 'Pride and Prejudice'),
    (7, 'Professional ASP.NET 4.5 in C# and VB')

	

	insert into borrowers_details values
	(001,'VIKRAM',1),
	(002,'VASANTH',6),
	(003,'HARI',4),
	(004,'HEMANTH',2)
	insert into borrowers_details values
	(005,'HARSHAN',8),
	(007,'SELVA',3),
	(008,'DIVYA',7)


	INSERT INTO management_table VALUES 
	(1,1,50),
	(2,2,23),
	(3,3,22),
	(4,4,35),
	(5,5,25),
	(6,6,45),
	(7,7,10)

	select * from books order by book_id
	SELECT * FROM borrowers_details
	select * from management_table
	
	
	update books set book_id=8 where book_id=7
	select * from management_table
