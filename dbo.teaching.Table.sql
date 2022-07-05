USE [schoolManagement]
GO
/****** Object:  Table [dbo].[teaching]    Script Date: 9/3/2018 1:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teaching](
	[classRoomCode] [varchar](25) NULL,
	[modelCode] [varchar](25) NULL,
	[teachaerCode] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[teaching]  WITH CHECK ADD FOREIGN KEY([classRoomCode])
REFERENCES [dbo].[classroom] ([classRoomCode])
GO
ALTER TABLE [dbo].[teaching]  WITH CHECK ADD FOREIGN KEY([modelCode])
REFERENCES [dbo].[Model] ([modelCode])
GO
ALTER TABLE [dbo].[teaching]  WITH CHECK ADD FOREIGN KEY([teachaerCode])
REFERENCES [dbo].[teacher] ([teacherCode])
GO
