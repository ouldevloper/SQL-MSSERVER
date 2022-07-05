USE [schoolManagement]
GO
/****** Object:  Table [dbo].[student]    Script Date: 9/3/2018 1:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[studentCode] [varchar](25) NOT NULL,
	[studentName] [varchar](55) NOT NULL,
	[studentSecondeName] [varchar](55) NULL,
	[studentBirthDay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[studentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
