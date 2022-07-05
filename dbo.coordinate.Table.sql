USE [schoolManagement]
GO
/****** Object:  Table [dbo].[coordinate]    Script Date: 9/3/2018 1:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[coordinate](
	[classRoomCode] [varchar](25) NULL,
	[teacherCode] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[coordinate]  WITH CHECK ADD FOREIGN KEY([classRoomCode])
REFERENCES [dbo].[classroom] ([classRoomCode])
GO
ALTER TABLE [dbo].[coordinate]  WITH CHECK ADD FOREIGN KEY([teacherCode])
REFERENCES [dbo].[teacher] ([teacherCode])
GO
