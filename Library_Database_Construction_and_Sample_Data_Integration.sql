--use ASQL; --using database


/*

Database Creation and Data Population
Objective: Create a database schema for a library management system and populate it with sample data.
Tasks:
1.	Table Creation: Write SQL statements to create the following tables in the db_LibraryManagement database:
•	tbl_publisher
•	tbl_book
•	tbl_library_branch
•	tbl_borrower
•	tbl_book_loans
•	tbl_book_copies
•	tbl_book_authors
2.	Data Population: Insert sample data into the tables using appropriate SQL INSERT statements.

*/

create database db_libraryManagment
go

/*==========================Tables==========================*/
/*•	tbl_publisher
•	tbl_book
•	tbl_library_branch
•	tbl_borrower
•	tbl_book_loans
•	tbl_book_copies
•	tbl_book_authors*/


CREATE table tbl_publisher (
	publisher_PublisherName varchar(100) PRIMARY KEY NOT NULL,
	publisher_PublisherAddress varchar(100),
	publisher_PublisherPhone varchar(15) 
);

CREATE TABLE tbl_book(
	book_BookID INT IDENTITY(1,1) PRIMARY KEY,
	book_Title varchar(100),
	book_PublisherName varchar(100)
	   	 )


CREATE TABLE tbl_library_branch(
	library_branch_BranchID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	library_branch_BranchName varchar(50) ,
	library_branch_BranchAddress varchar(100)
)
CREATE TABLE tbl_borrower(
	borrower_CardNo INT IDENTITY(100,1) PRIMARY KEY NOT NULL,
	borrower_BorrowerName varchar(50),
	borrower_BorrowerAddress varchar(100),
	borrower_BorrowerPhone varchar(15) 
	
)
CREATE TABLE tbl_book_loans(
	book_loans_LoansID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	book_loans_BookID INT,
	book_loans_BranchID int,
	book_loans_CardNo int,
	book_loans_DateOut date,
	book_loans_DueDate date
	
	)
CREATE TABLE tbl_book_copies(
	book_copies_CopiesID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	book_copies_BookID int,
	book_copies_BranchID int, 
	book_copies_No_Of_Copies int
)
CREATE TABLE tbl_book_authors(
	book_authors_AuthorID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	book_authors_BookID int,
	book_authors_AuthorName varchar(50)
)




/*=============================End Tables===========================*/


/*=============================Populate tables=======================*/


INSERT INTO tbl_publisher
		(publisher_PublisherName, publisher_PublisherAddress, publisher_PublisherPhone)
		VALUES
		('DAW Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Viking','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Signet Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Chilton Books','Not Available','Not Available'),
		('George Allen & Unwin','83 Alexander Ln, Crows Nest NSW 2065, Australia','+61-2-8425-0100'),
		('Alfred A. Knopf','The Knopf Doubleday Group Domestic Rights, 1745 Broadway, New York, NY 10019','212-940-7390'),		
		('Bloomsbury','Bloomsbury Publishing Inc., 1385 Broadway, 5th Floor, New York, NY 10018','212-419-5300'),
		('Shinchosa','Oga Bldg. 8, 2-5-4 Sarugaku-cho, Chiyoda-ku, Tokyo 101-0064 Japan','+81-3-5577-6507'),
		('Harper and Row','HarperCollins Publishers, 195 Broadway, New York, NY 10007','212-207-7000'),
		('Pan Books','175 Fifth Avenue, New York, NY 10010','646-307-5745'),
		('Chalto & Windus','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Harcourt Brace Jovanovich','3 Park Ave, New York, NY 10016','212-420-5800'),
		('W.W. Norton',' W. W. Norton & Company, Inc., 500 Fifth Avenue, New York, New York 10110','212-354-5500'),
		('Scholastic','557 Broadway, New York, NY 10012','800-724-6527'),
		('Bantam','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Picador USA','175 Fifth Avenue, New York, NY 10010','646-307-5745')		
	;

	SELECT * FROM tbl_publisher

	INSERT INTO tbl_book
		(book_Title, book_PublisherName)
		VALUES 
		('The Name of the Wind', 'DAW Books'),
		('It', 'Viking'),
		('The Green Mile', 'Signet Books'),
		('Dune', 'Chilton Books'),
		('The Hobbit', 'George Allen & Unwin'),
		('Eragon', 'Alfred A. Knopf'),
		('A Wise Mans Fear', 'DAW Books'),
		('Harry Potter and the Philosophers Stone', 'Bloomsbury'),
		('Hard Boiled Wonderland and The End of the World', 'Shinchosa'),
		('The Giving Tree', 'Harper and Row'),
		('The Hitchhikers Guide to the Galaxy', 'Pan Books'),
		('Brave New World', 'Chalto & Windus'),
		('The Princess Bride', 'Harcourt Brace Jovanovich'),
		('Fight Club', 'W.W. Norton'),
		('Holes', 'Scholastic'),
		('Harry Potter and the Chamber of Secrets', 'Bloomsbury'),
		('Harry Potter and the Prisoner of Azkaban', 'Bloomsbury'),
		('The Fellowship of the Ring', 'George Allen & Unwin'),
		('A Game of Thrones', 'Bantam'),
		('The Lost Tribe', 'Picador USA');

	SELECT * FROM tbl_book WHERE book_PublisherName = 'George Allen & Unwin'

	INSERT INTO tbl_library_branch
		(library_branch_BranchName, library_branch_BranchAddress)
		VALUES
		('Sharpstown','32 Corner Road, New York, NY 10012'),
		('Central','491 3rd Street, New York, NY 10014'),
		('Saline','40 State Street, Saline, MI 48176'),
		('Ann Arbor','101 South University, Ann Arbor, MI 48104');

SELECT * FROM tbl_library_branch

	INSERT INTO tbl_borrower
		(borrower_BorrowerName, borrower_BorrowerAddress, borrower_BorrowerPhone)
		VALUES
		('Joe Smith','1321 4th Street, New York, NY 10014','212-312-1234'),
		('Jane Smith','1321 4th Street, New York, NY 10014','212-931-4124'),
		('Tom Li','981 Main Street, Ann Arbor, MI 48104','734-902-7455'),
		('Angela Thompson','2212 Green Avenue, Ann Arbor, MI 48104','313-591-2122'),
		('Harry Emnace','121 Park Drive, Ann Arbor, MI 48104','412-512-5522'),
		('Tom Haverford','23 75th Street, New York, NY 10014','212-631-3418'),
		('Haley Jackson','231 52nd Avenue New York, NY 10014','212-419-9935'),
		('Michael Horford','653 Glen Avenue, Ann Arbor, MI 48104','734-998-1513');
	
	SELECT * FROM tbl_borrower

	INSERT INTO tbl_book_loans
		(book_loans_BookID, book_loans_BranchID, book_loans_CardNo, book_loans_DateOut, book_loans_DueDate)
		VALUES
		('1','1','100','1/1/18','2/2/18'),
		('2','1','100','1/1/18','2/2/18'),
		('3','1','100','1/1/18','2/2/18'),
		('4','1','100','1/1/18','2/2/18'),
		('5','1','102','1/3/18','2/3/18'),
		('6','1','102','1/3/18','2/3/18'),
		('7','1','102','1/3/18','2/3/18'),
		('8','1','102','1/3/18','2/3/18'),
		('9','1','102','1/3/18','2/3/18'),
		('11','1','102','1/3/18','2/3/18'),
		('12','2','105','12/12/17','1/12/18'),
		('10','2','105','12/12/17','1/12/17'),
		('20','2','105','2/3/18','3/3/18'),
		('18','2','105','1/5/18','2/5/18'),
		('19','2','105','1/5/18','2/5/18'),
		('19','2','100','1/3/18','2/3/18'),
		('11','2','106','1/7/18','2/7/18'),
		('1','2','106','1/7/18','2/7/18'),
		('2','2','100','1/7/18','2/7/18'),
		('3','2','100','1/7/18','2/7/18'),
		('5','2','105','12/12/17','1/12/18'),
		('4','3','103','1/9/18','2/9/18'),
		('7','3','102','1/3/18','2/3/18'),
		('17','3','102','1/3/18','2/3/18'),
		('16','3','104','1/3/18','2/3/18'),
		('15','3','104','1/3/18','2/3/18'),
		('15','3','107','1/3/18','2/3/18'),
		('14','3','104','1/3/18','2/3/18'),
		('13','3','107','1/3/18','2/3/18'),
		('13','3','102','1/3/18','2/3/18'),
		('19','3','102','12/12/17','1/12/18'),
		('20','4','103','1/3/18','2/3/18'),
		('1','4','102','1/12/18','2/12/18'),
		('3','4','107','1/3/18','2/3/18'),
		('18','4','107','1/3/18','2/3/18'),
		('12','4','102','1/4/18','2/4/18'),
		('11','4','103','1/15/18','2/15/18'),
		('9','4','103','1/15/18','2/15/18'),
		('7','4','107','1/1/18','2/2/18'),
		('4','4','103','1/1/18','2/2/18'),
		('1','4','103','2/2/17','3/2/18'),
		('20','4','103','1/3/18','2/3/18'),
		('1','4','102','1/12/18','2/12/18'),
		('3','4','107','1/13/18','2/13/18'),
		('18','4','107','1/13/18','2/13/18'),
		('12','4','102','1/14/18','2/14/18'),
		('11','4','103','1/15/18','2/15/18'),
		('9','4','103','1/15/18','2/15/18'),
		('7','4','107','1/19/18','2/19/18'),
		('4','4','103','1/19/18','2/19/18'),
		('1','4','103','1/22/18','2/22/18');

		
	SELECT * FROM tbl_book_loans

	INSERT INTO tbl_book_copies
		(book_copies_BookID, book_copies_BranchID, book_copies_No_Of_Copies)
		VALUES
		('1','1','5'),
		('2','1','5'),
		('3','1','5'),
		('4','1','5'),
		('5','1','5'),
		('6','1','5'),
		('7','1','5'),
		('8','1','5'),
		('9','1','5'),
		('10','1','5'),
		('11','1','5'),
		('12','1','5'),
		('13','1','5'),
		('14','1','5'),
		('15','1','5'),
		('16','1','5'),
		('17','1','5'),
		('18','1','5'),
		('19','1','5'),
		('20','1','5'),
		('1','2','5'),
		('2','2','5'),
		('3','2','5'),
		('4','2','5'),
		('5','2','5'),
		('6','2','5'),
		('7','2','5'),
		('8','2','5'),
		('9','2','5'),
		('10','2','5'),
		('11','2','5'),
		('12','2','5'),
		('13','2','5'),
		('14','2','5'),
		('15','2','5'),
		('16','2','5'),
		('17','2','5'),
		('18','2','5'),
		('19','2','5'),
		('20','2','5'),
		('1','3','5'),
		('2','3','5'),
		('3','3','5'),
		('4','3','5'),
		('5','3','5'),
		('6','3','5'),
		('7','3','5'),
		('8','3','5'),
		('9','3','5'),
		('10','3','5'),
		('11','3','5'),
		('12','3','5'),
		('13','3','5'),
		('14','3','5'),
		('15','3','5'),
		('16','3','5'),
		('17','3','5'),
		('18','3','5'),
		('19','3','5'),
		('20','3','5'),
		('1','4','5'),
		('2','4','5'),
		('3','4','5'),
		('4','4','5'),
		('5','4','5'),
		('6','4','5'),
		('7','4','5'),
		('8','4','5'),
		('9','4','5'),
		('10','4','5'),
		('11','4','5'),
		('12','4','5'),
		('13','4','5'),
		('14','4','5'),
		('15','4','5'),
		('16','4','5'),
		('17','4','5'),
		('18','4','5'),
		('19','4','5'),
		('20','4','5');

	SELECT * FROM tbl_book_copies
 

	INSERT INTO tbl_book_authors
		(book_authors_BookID,book_authors_AuthorName)
		VALUES
		('1','Patrick Rothfuss'),
		('2','Stephen King'),
		('3','Stephen King'),
		('4','Frank Herbert'),
		('5','J.R.R. Tolkien'),
		('6','Christopher Paolini'),
		('6','Patrick Rothfuss'),
		('8','J.K. Rowling'),
		('9','Haruki Murakami'),
		('10','Shel Silverstein'),
		('11','Douglas Adams'),
		('12','Aldous Huxley'),
		('13','William Goldman'),
		('14','Chuck Palahniuk'),
		('15','Louis Sachar'),
		('16','J.K. Rowling'),
		('17','J.K. Rowling'),
		('18','J.R.R. Tolkien'),
		('19','George R.R. Martin'),
		('20','Mark Lee');

SELECT * FROM tbl_book_authors


--1.	Find the titles of all books published by "Bloomsbury."
	SELECT book_title,book_PublisherName FROM tbl_book
	where book_PublisherName = 'Bloomsbury'

--2.	List the names of borrowers whose phone numbers start with the area code "212."

	select * from tbl_borrower
	select borrower_BorrowerName,borrower_BorrowerPhone 
	from tbl_borrower
	where borrower_BorrowerPhone like '212%'

--3.	Retrieve the titles of books with more than 10 copies available.

	select * from tbl_book_copies
	select * from tbl_book

	select b.book_Title,c.book_copies_No_Of_Copies from tbl_book b
	join tbl_book_copies c on c.book_copies_BookID=b.book_BookID
	where c.book_copies_No_Of_Copies > 10


--4.	Display the names of borrowers who have borrowed books from the "Central" branch.

select * from tbl_borrower
select * from tbl_book_loans
select * from tbl_library_branch
select * from tbl_book_copies



select distinct b.borrower_BorrowerName,n.library_branch_BranchName 
from tbl_library_branch n full join tbl_book_loans l on
n.library_branch_BranchID = l.book_loans_BranchID full join tbl_borrower b on
l.book_loans_CardNo = b.borrower_CardNo
where n.library_branch_BranchName = 'Central'


--5.	List the titles of books borrowed by borrower "Joe Smith."
select * from tbl_borrower
select * from tbl_book
select * from tbl_book_loans


select  b.borrower_BorrowerName, bk.book_Title
from tbl_borrower b
JOIN tbl_book_loans bl ON b.borrower_CardNo = bl.book_loans_CardNo
JOIN tbl_book bk ON bl.book_loans_BookID = bk.book_BookID
where b.borrower_BorrowerName = 'Joe Smith'


--6.	Find the names of publishers for the books authored by "J.K. Rowling."
select * from tbl_publisher
select * from tbl_book
select * from tbl_book_authors

select p.publisher_PublisherName as PublisherName, a.book_authors_AuthorName AuthorName, b.book_Title
from tbl_book_authors a
join tbl_book b 
on b.book_BookID = a.book_authors_BookID
join tbl_publisher p 
on b.book_PublisherName = p.publisher_PublisherName
where book_authors_AuthorName='J.K. Rowling'

--7.	Count the total number of books available in the library.
select * from tbl_book_copies
select * from tbl_library_branch


select book_copies_BranchID Branch,sum(book_copies_No_of_Copies) totalBooks
from tbl_book_copies
group by book_copies_BranchID



--8.	Calculate the average number of copies available per book across all branches.
select book_copies_BranchID Branch,avg(book_copies_No_of_Copies) AverageBookCount
from tbl_book_copies
group by book_copies_BranchID


--9.	Find the branch with the highest number of books loaned out.

select * from tbl_book_loans
select * from tbl_library_branch

select book_loans_BranchID Branch,count(book_loans_BookID) loanBooks
from tbl_book_loans
group by book_loans_BranchID
order by loanBooks desc

--10.	Insert a new book titled "The Catcher in the Rye" by "J.D. Salinger" into the database.

select * from tbl_book
select * from tbl_book_authors


insert into tbl_book (book_Title) values ('The Catcher in the Rye')
insert into tbl_book_authors (book_authors_AuthorName,book_authors_BookID) values ('J.D. Salinger',21)


--11.	Update the address of the "Sharpstown" library branch to "45 West Side Avenue, New York, NY 10012."

select * from tbl_library_branch

update tbl_library_branch
set library_branch_BranchAddress = '45 West Side Avenue, New York, NY 10012'

--12.	Remove all books published by "Pan Books" from the database.
select * from tbl_publisher
select * from tbl_book

delete from tbl_book
where book_PublisherName = 'Pan Books'

--13.	Retrieve the names of borrowers who have borrowed the same book more than once.


--14.	Find the title of the book with the earliest due date.
select top 2 * from tbl_book_loans
select top 2 * from tbl_book


select top 1 b.book_title, l.book_loans_DueDate 
from tbl_book b join tbl_book_loans l
on b.book_BookID = l.book_loans_bookID
order by l.book_loans_DueDate 

--15.	List the names of borrowers who have borrowed books authored by both "Stephen King" and "J.K. Rowling."
select * from tbl_borrower
select * from tbl_book_authors
select * from tbl_book_loans

select distinct bb.borrower_BorrowerName, a.book_authors_AuthorName 
from tbl_book_authors a join tbl_book_loans l
on l.book_loans_BookID = a.book_authors_BookID join tbl_borrower bb
on l.book_loans_CardNo = bb.borrower_CardNo
where a.book_authors_AuthorName  in ('Stephen King','J.K. Rowling')



--16.	Find the names of borrowers who have borrowed books published by "Bloomsbury.

select * from tbl_book
select * from tbl_borrower
select * from tbl_book_loans

select distinct bb.borrower_BorrowerName, b.book_PublisherName 
from tbl_book b
join tbl_book_loans l
on b.book_BookID = l.book_loans_BookID
join tbl_borrower bb
on l.book_loans_cardNo = bb.borrower_CardNo
where b.book_PublisherName in ('Bloomsbury')

--17.	Retrieve the titles of books borrowed by borrowers located in New York.

select * from tbl_borrower 
select * from tbl_book
select * from tbl_book_loans


select distinct b.book_Title, bb.borrower_BorrowerName
from tbl_book b
join tbl_book_loans l on b.book_BookID =l.book_loans_BookID
join tbl_borrower bb 
on bb.borrower_CardNo = l.book_loans_CardNo
where bb.borrower_BorrowerAddress like '%New York%'

--18.	Calculate the average number of books borrowed per borrower.


select top 2 * from tbl_borrower
select top 2 * from tbl_book_loans
select top 2* from tbl_book_copies

select b.borrower_BorrowerName,l. book_loans_CardNo, avg(c.book_copies_No_of_Copies) AvgBookborrowed
from tbl_book_loans l
join tbl_book_copies c
on l.book_loans_BookID = c.book_copies_BookID
join tbl_borrower b
on b.borrower_CardNo =l.book_loans_CardNo
group by book_loans_CardNo, b.borrower_BorrowerName




--19.	Find the branch with the highest average number of books borrowed per borrower.

select  c.book_copies_BranchID,b.borrower_BorrowerName, avg(c.book_copies_No_of_Copies) AvgBookborrowed
from tbl_book_loans l
join tbl_book_copies c
on l.book_loans_BookID = c.book_copies_BookID
join tbl_borrower b
on b.borrower_CardNo =l.book_loans_CardNo
group by c.book_copies_BranchID, b.borrower_BorrowerName
order by AvgBookborrowed



--20.	Rank library branches based on the total number of books borrowed, without grouping

select * from tbl_library_branch
select * from tbl_book_loans

select book_loans_BranchID, book_loans_LoansID,
count(book_loans_LoansID) over (partition by book_loans_BranchID) as Booksborrowed,
rank() over (  order by book_loans_LoansID desc) as Rank
from tbl_book_loans
order by Booksborrowed desc

select  book_loans_BranchID, book_loans_LoansID,
count(book_loans_LoansID) over (partition by  book_loans_BranchID ) as Booksborrowed,
rank()  over (partition by  book_loans_BranchID order by book_loans_LoansID desc  ) As Ranks
from tbl_book_loans 
order by Booksborrowed desc

--21.	Find the names of borrowers who have borrowed books authored by "Stephen King" and "J.K. Rowling" from the same library branch.

select distinct b.borrower_BorrowerName, a.book_authors_AuthorName 
from tbl_book_loans l   join tbl_borrower b
on l.book_loans_CardNo = b.borrower_CardNo 
join tbl_book_authors a
on  l.book_loans_BookID = a.book_authors_BookID
where a.book_authors_AuthorName in ('Stephen King','J.K. Rowling')


--22.	Retrieve the names of borrowers who have borrowed books from branches located in New York and have more than 5 books checked out.
select * from tbl_library_branch
select * from tbl_book_loans

select bb.borrower_BorrowerName, l.book_loans_DueDate, b.library_branch_BranchAddress,count(l.book_loans_DueDate) as Booksloaned
from tbl_library_branch b
join tbl_book_loans l
on b.library_branch_BranchID = l.book_loans_BranchID
join tbl_borrower bb
on l.book_loans_CardNo = bb.borrower_CardNo
where b.library_branch_BranchAddress like '%New York%'
group by bb.borrower_CardNo,bb.borrower_BorrowerName, l.book_loans_DueDate, b.library_branch_BranchAddress
having count(l.book_loans_DueDate)>5

--OR
--IF WE ARE CONSIDERING CHECK OUT AS BOOKS NOT RETURNED YET WHERE DUE DATE IS NULL

select bb.borrower_BorrowerName, l.book_loans_DueDate, b.library_branch_BranchAddress,count(l.book_loans_DueDate) as Booksloaned
from tbl_library_branch b
join tbl_book_loans l
on b.library_branch_BranchID = l.book_loans_BranchID
join tbl_borrower bb
on l.book_loans_CardNo = bb.borrower_CardNo
where b.library_branch_BranchAddress like '%New York%' and l.book_loans_DueDate=Null
group by bb.borrower_CardNo,bb.borrower_BorrowerName, l.book_loans_DueDate, b.library_branch_BranchAddress
having count(l.book_loans_DueDate)>5


--23.	How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
select c.book_copies_BranchID,l.library_branch_BranchName,b.book_Title,sum(book_copies_No_of_copies) as Books 
from tbl_book b
join tbl_book_copies c
on c.book_copies_BookID = b.book_BookID
join tbl_library_branch l
on c.book_copies_BranchID = l.library_branch_BranchID
where b.book_Title = 'The Lost Tribe' and l.library_branch_BranchName = 'Sharpstown'
group by c.book_copies_BranchID,b.book_Title,l.library_branch_BranchName

--24.	How many copies of the book titled "The Lost Tribe" are owned by each library branch?

select * from tbl_book_copies
select * from tbl_library_branch
select * from tbl_book

select c.book_copies_BranchID,b.book_Title,sum(book_copies_No_of_copies) as Books 
from tbl_book b
join tbl_book_copies c
on c.book_copies_BookID = b.book_BookID
join tbl_library_branch l
on c.book_copies_BranchID = l.library_branch_BranchID
where b.book_Title = 'The Lost Tribe'
group by c.book_copies_BranchID,b.book_Title


--25.	Retrieve the names of all borrowers who do not have any books checked out.
select * from tbl_borrower
select * from tbl_book_loans

select b.borrower_BorrowerName, noCheckout = 'yes' from tbl_borrower b
 join tbl_book_loans l
on b.borrower_CardNo = l.book_loans_CardNo
where l.book_loans_DueDate != Null

--26.	For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address. 

SELECT 
    b.book_Title,
    br.borrower_BorrowerName,
    br.borrower_BorrowerAddress
FROM tbl_book_loans bl
JOIN tbl_book b ON bl.book_loans_BookID = b.book_BookID
JOIN tbl_borrower br ON bl.book_loans_CardNo = br.borrower_CardNo
JOIN tbl_library_branch lb ON bl.book_loans_BranchID = lb.library_branch_BranchID
WHERE 
    lb.library_branch_BranchName = 'Sharpstown' 
    AND bl.book_loans_DueDate = CAST(GETDATE() AS DATE);


--27.	For each library branch, retrieve the branch name and the total number of books loaned out from that branch.

select b.library_branch_BranchName as BranchName,count(l.book_loans_LoansID) BooksLoaned
from tbl_library_branch b join tbl_book_loans l
on l.book_loans_BranchID = b.library_branch_BranchID
group by b.library_branch_BranchName



