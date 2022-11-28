USE [officeTask]
GO

/****** Object:  Table [dbo].[_user]    Script Date: 10/10/2022 1:33:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [varchar](max) NOT NULL,
	[userName] [varchar](max) NOT NULL,
	[userPassword] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[accounts]    Script Date: 10/10/2022 1:35:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[accounts](
	[account_id] [int] NOT NULL,
	[account_title] [varchar](max) NOT NULL,
	[acc_login] [varchar](max) NULL,
	[acc_password] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

-- 
drop table saveInfo;
create table saveInfo (id int, s_name varchar(max), s_account varchar(max), s_username varchar(max), s_password varchar(max), _date varchar(max));

create trigger mytrigger on saveInfro 
 
