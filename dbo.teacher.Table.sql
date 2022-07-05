USE [schoolManagement]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 9/3/2018 1:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teacher](
	[teacherCode] [varchar](25) NOT NULL,
	[teacherName] [varchar](55) NULL,
	[teacherSecondName] [varchar](55) NULL,
PRIMARY KEY CLUSTERED 
(
	[teacherCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
