USE [schoolManagement]
GO
/****** Object:  Table [dbo].[notes]    Script Date: 9/3/2018 1:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[notes](
	[studentCode] [varchar](25) NULL,
	[modelCode] [varchar](25) NULL,
	[note] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[notes]  WITH CHECK ADD FOREIGN KEY([modelCode])
REFERENCES [dbo].[Model] ([modelCode])
GO
ALTER TABLE [dbo].[notes]  WITH CHECK ADD FOREIGN KEY([studentCode])
REFERENCES [dbo].[student] ([studentCode])
GO
