USE [master]
GO
/****** Object:  Database [Project]    Script Date: 10/12/2021 10:38:21 PM ******/
CREATE DATABASE [Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project] SET RECOVERY FULL 
GO
ALTER DATABASE [Project] SET  MULTI_USER 
GO
ALTER DATABASE [Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Project', N'ON'
GO
ALTER DATABASE [Project] SET QUERY_STORE = OFF
GO
USE [Project]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 10/12/2021 10:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [varchar](50) NULL,
	[CourseName] [varchar](max) NULL,
	[CourseDescrption] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/12/2021 10:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] NOT NULL,
	[StudentName] [varchar](50) NOT NULL,
	[StudentSurname] [varchar](50) NOT NULL,
	[DOB] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Phone] [nchar](10) NOT NULL,
	[Street] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[PostalCode] [varchar](50) NULL,
	[CourseID] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseDescrption]) VALUES (N'PMM271', N'ProjectMangement', N'Learning about good project mangament skills')
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseDescrption]) VALUES (N'PRG271', N'Programming271', N'Object oriented Programming,windows forms')
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseDescrption]) VALUES (N'MAT171', N'Mathematics171', N'Basic mathematics conecpts ,matrix')
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseDescrption]) VALUES (N'LPR171', N'Linear Progamming', N'')
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseDescrption]) VALUES (N'STA271', N'Statitcs271', N'Random variables , distrubtions')
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseDescrption]) VALUES (N'CNA271', N'CloudNative', N'Docker and microservices ')
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseDescrption]) VALUES (N'SAD371', N'Software Analysis and design', N'Diffrent design patterns for software development')
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseDescrption]) VALUES (N'WPR271', N'Web programming ', N'learn how to incoprate javascript to web applications')
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseDescrption]) VALUES (N'DBD271', N'Database Development', N'Learn how use SQL server , SQL statements ')
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseDescrption]) VALUES (N'INL271', N'Inovation Leadership', N'learn how to analysis problems using diffrent ')
GO
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (100, N'Dorcas', N'Kalunga', N'17-11-2000', N'Female', N'078608977 ', N'Goby', N'Rustenburg', N'0987', N'PRG272')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (101, N'Joyce', N'Lumbabula', N'04-01-2002', N'Female', N'086789900 ', N'Leyds', N'Pretoria', N'0001', N'WPR181')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (102, N'Christoffel', N'Meyer', N'14-01-1997', N'Male', N'093847467 ', N'Wonderboom', N'Pretoria', N'0087', N'PRG272')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (103, N'Pedro', N'Germano', N'09-09-2000', N'Male', N'098766788 ', N'Sunnyside', N'Pretoria', N'0976', N'PRG272')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (103, N'Rueben', N'Ngoy', N'13-01-2008', N'Male', N'093768490 ', N'Aviaryhills', N'Newcastle', N'0887', N'MAT271')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (104, N'Dasha', N'Mahago', N'08-03-2000', N'Female', N'086567890 ', N'Goby', N'Rustenburg', N'0868', N'LPR272')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (105, N'Daniel', N'Mahago', N'10-10-2016', N'Male', N'098765678 ', N'Goby', N'Rustenburg', N'0989', N'SAD381')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (106, N'Samson', N'Kalunga', N'27-12-2002', N'Male', N'098778999 ', N'FrancisBaard', N'Pretoria', N'0876', N'PRG171')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (107, N'Chimanda', N'Adichie', N'12-10-1999', N'Female', N'098726748 ', N'mukko', N'Joburg', N'0866', N'PMM371')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (108, N'Mildred', N'Okonkwo', N'13-10-1996', N'Female', N'098789098 ', N'ChurchSquare', N'Joburg', N'2757', N'STA281')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (109, N'Sythia', N'Kamunaya', N'13-06-2001', N'Female', N'087788999 ', N'panama', N'Joburg', N'0865', N'SAD371')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (110, N'Itumeleng', N'Makhubu', N'10-12-2001', N'Male', N'098538789 ', N'soweto', N'joburg', N'0875', N'STA281')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (111, N'Tiffany', N'Micheals', N'19-12-2000', N'Female', N'086354678 ', N'leydsSquare', N'Pretoria', N'0976', N'CNA271')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (112, N'Simon', N'Mpule', N'11-11-2001', N'Male', N'092345678 ', N'londonTown', N'Joburg', N'0979', N'PMM371')
INSERT [dbo].[Student] ([StudentID], [StudentName], [StudentSurname], [DOB], [Gender], [Phone], [Street], [City], [PostalCode], [CourseID]) VALUES (113, N'Tatenda', N'Ruanaga', N'16-09-2000', N'Female', N'098767889 ', N'FrancoisBaard', N'pretoria', N'0972', N'INL271')
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCourse]    Script Date: 10/12/2021 10:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteCourse] 
		@courseid VARCHAR(50)
AS
BEGIN
	DELETE FROM Course
	WHERE CourseID=@courseid
END
GO
/****** Object:  StoredProcedure [dbo].[spDeleteStudents]    Script Date: 10/12/2021 10:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteStudents]
	@ID INT
AS
BEGIN
	DELETE FROM Student
	WHERE StudentID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[spDisplayCourse]    Script Date: 10/12/2021 10:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDisplayCourse]
AS
BEGIN
	SELECT * FROM Course
END
GO
/****** Object:  StoredProcedure [dbo].[spDisplayStudents]    Script Date: 10/12/2021 10:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDisplayStudents]
AS
BEGIN 
	SELECT * FROM Student
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertCourse]    Script Date: 10/12/2021 10:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertCourse]
	@courseid varchar(50),
	@coursename varchar(50),
	@courseDescrption varchar(max)
AS
BEGIN 
	INSERT INTO Course(CourseID,CourseName,CourseDescrption)
	VALUES(@courseid,@coursename,@courseDescrption)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertStudents]    Script Date: 10/12/2021 10:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertStudents]
	@ID INT,
	@Name varchar(50),
	@Surname varchar(50),
	@dob varchar(50),
	@gender varchar(50),
	@phone varchar(50),
	@street varchar(50),
	@city varchar(50),
	@postalcode varchar(50),
	@courseid varchar(50)
AS
BEGIN 
	INSERT INTO Student( StudentID,StudentName,StudentSurname,DOB,Gender,Phone,Street,City,PostalCode,CourseID)
	VALUES(@ID,@Name,@Surname,@dob,@gender,@phone,@street,@city,@postalcode,@courseid)
END
GO
/****** Object:  StoredProcedure [dbo].[spSearchCourse]    Script Date: 10/12/2021 10:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSearchCourse]
	@courseid VARCHAR(50)
AS
BEGIN
	SELECT CourseID,CourseName,CourseDescrption
	FROM Course
	WHERE CourseID=@courseid
END
GO
/****** Object:  StoredProcedure [dbo].[spSearchStudents]    Script Date: 10/12/2021 10:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSearchStudents] 
		@id INT
AS
BEGIN 
	SELECT StudentID,StudentName,StudentSurname,DOB,Gender,Phone,Street,City,PostalCode,CourseID
	FROM Student
	WHERE StudentID=@id
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCourse]    Script Date: 10/12/2021 10:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateCourse] 
		@courseid VARCHAR(50),
		@coursename varchar(50),
		@courseDescrption varchar(50)
AS
BEGIN
	UPDATE Course
	SET CourseID=@courseid,CourseName=@coursename,CourseDescrption=@courseDescrption
	WHERE CourseID=@courseid
END
	
GO
/****** Object:  StoredProcedure [dbo].[spUpdatesStudent]    Script Date: 10/12/2021 10:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdatesStudent]
	@ID INT,
	@Name varchar(20),
	@Surname varchar(20),
	@dob varchar(20),
	@gender varchar(20),
	@phone varchar(20),
	@street varchar(20),
	@city varchar(20),
	@postalcode varchar(20),
	@courseid varchar(20)
AS
BEGIN
	UPDATE Student
	SET StudentID=@ID,StudentName=@Name,StudentSurname=@Surname,DOB=@dob,Gender=@gender,Phone=@phone,Street=@street,City=@city,PostalCode=@postalcode,CourseID=@courseid
	WHERE StudentID=@ID
END
GO
USE [master]
GO
ALTER DATABASE [Project] SET  READ_WRITE 
GO
