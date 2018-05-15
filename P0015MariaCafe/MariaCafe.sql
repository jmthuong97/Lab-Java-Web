USE master
GO
IF EXISTS(select * from sys.databases where name='MARIA_CAFE')
DROP DATABASE MARIA_CAFE
GO
CREATE DATABASE MARIA_CAFE
GO 


USE MARIA_CAFE
GO
CREATE TABLE Products (
	ID [int] IDENTITY(1,1) PRIMARY KEY,
	Name [nvarchar](50) NOT NULL, 
	Description [nvarchar](300) NOT NULL,
	ImageUrl [nvarchar](100) NOT NULL,
	CreatedTime [datetime] DEFAULT(GETDATE())
)

CREATE TABLE Intros (
	Type [nvarchar](10) NOT NULL,
	Title [nvarchar](30) NOT NULL,
	Content [nvarchar](MAX) NOT NULL,
	ImageUrl [nvarchar](100)
)

CREATE TABLE Info (
	Address [nvarchar](100),
	Tel [varchar](15) CHECK (Tel not like '%[^0-9]%'),
	Email [varchar](30),
	OpenningHours [nvarchar](100),
)

INSERT [dbo].[Products] ([Name], [Description], [ImageUrl]) VALUES ('Soft Cake', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', 'images/i282319414620354444._szw480h1280_.jpg')
INSERT [dbo].[Products] ([Name], [Description], [ImageUrl]) VALUES ('Traditional Cakes', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', 'images/i282319414620354374._rsw480h360_szw480h360_.jpg')
INSERT [dbo].[Products] ([Name], [Description], [ImageUrl]) VALUES ('In the Afternoon', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', 'images/i282319414620354139._rsw480h360_szw480h360_.jpg')

INSERT [dbo].[Intros] ([Type], [Title], [Content], [ImageUrl]) VALUES ('Intro', 'Maria''s Cosy Cafe', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
<br/>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica', 'images/i282319414584937113._szw480h1280_.jpg')
INSERT [dbo].[Intros] ([Type], [Title], [Content], [ImageUrl]) VALUES ('About', 'About my Cakes', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', 'images/i282319414620354444._szw480h1280_.jpg')

INSERT [dbo].[Info] ([Address], [Tel], [Email], [OpenningHours]) VALUES ('Copenhagen, Denmark', '123456', 'your-email@your-email.com', '<p>Monday: Closed</p><p>Tuesday - Friday: 10:00 - 20:00</p><p>Saturday - Sunday: 11:00 - 21:00</p>')


/*
CREATE TABLE Invoices (
	ID [int] IDENTITY(1,1) PRIMARY KEY,
	CreatedDate [datetime] DEFAULT(GETDATE())
)

CREATE TABLE Packages (
	ID [int] FOREIGN KEY REFERENCES Invoices (ID) PRIMARY KEY,
	ProductId [int] NOT NULL,
	Quantity [int] DEFAULT 1
)

CREATE TABLE Shippings (
	ID [int] FOREIGN KEY REFERENCES Invoices (ID) PRIMARY KEY,
	Name [nvarchar](50) NOT NULL,
	Company [nvarchar](100),
	Address1 [nvarchar](200) NOT NULL,
	Address2 [nvarchar](200),
	Zip [int] NOT NULL,
	City [nvarchar](30) NOT NULL,
	State [nvarchar](30) NOT NULL,
	Phone [varchar](20),
	Email [varchar](50) NOT NULL
)

CREATE TABLE Billings (
	ID [int] FOREIGN KEY REFERENCES Invoices (ID) PRIMARY KEY,
	Name [nvarchar](50) NOT NULL,
	Company [nvarchar](100),
	Address1 [nvarchar](200) NOT NULL,
	Address2 [nvarchar](200),
	Zip [int] NOT NULL,
	City [nvarchar](30) NOT NULL,
	State [nvarchar](30) NOT NULL
)

CREATE TABLE Feedbacks (
	ID [int] IDENTITY(1,1) PRIMARY KEY,
	Name [nvarchar](50),
	Email [varchar](50),
	Message [nvarchar](MAX) NOT NULL
)

INSERT [dbo].[Products] ([Name], [ShortDescription], [Description], [ImageUrl], [Price]) VALUES ('Television', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.', 'images/i285978589337227269._rsw480h360_szw480h360_.jpg', 260)
INSERT [dbo].[Products] ([Name], [ShortDescription], [Description], [ImageUrl], [Price]) VALUES ('GPS', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.', 'images/i285978589337227261._rsw480h360_szw480h360_.jpg', 180)
INSERT [dbo].[Products] ([Name], [ShortDescription], [Description], [ImageUrl], [Price]) VALUES ('Headphones', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.', 'images/i285978589337227255._rsw480h360_szw480h360_.jpg', 60)
INSERT [dbo].[Products] ([Name], [ShortDescription], [Description], [ImageUrl], [Price]) VALUES ('Notebook', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.', 'images/i285978589337227273._rsw480h360_szw480h360_.jpg', 325)
INSERT [dbo].[Products] ([Name], [ShortDescription], [Description], [ImageUrl], [Price]) VALUES ('Smartphone charger', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.', 'images/i285978589337227280._rsw480h360_szw480h360_.jpg', 25)
INSERT [dbo].[Products] ([Name], [ShortDescription], [Description], [ImageUrl], [Price]) VALUES ('Router', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.', 'images/i285978589337227283._rsw480h360_szw480h360_.jpg', 25.54)


INSERT [dbo].[Invoices] ([CreatedDate]) VALUES (GETDATE())
INSERT [dbo].[Packages] ([ID], [ProductId], [Quantity]) VALUES (1, 1, 2)
INSERT [dbo].[Shippings] ([ID], [Name], [Company], [Address1], [Address2], [Zip], [City], [State], [Phone], [Email]) VALUES (1, 'Xuan Chuc', 'FPT', 'Ha Dong', '', 10000, 'Ha Noi', 'Ha Noi', '0987654321', 'chuc@gmail.com')
INSERT [dbo].[Billings] ([ID], [Name], [Company], [Address1], [Address2], [Zip], [City], [State]) VALUES (1, 'Xuan Chuc', 'FPT', 'Ha Dong', '', 10000, 'Ha Noi', 'Ha Noi')

INSERT [dbo].[Feedbacks] ([Name], [Email], [Message]) VALUES ('Xuan Chuc', 'chuc@gmail.com', 'good products')
*/