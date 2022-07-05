USE [schoolManagement]
GO
/****** Object:  Table [dbo].[register]    Script Date: 9/3/2018 1:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[register](
	[studentCode] [varchar](25) NULL,
	[classRoomCode] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[register]  WITH CHECK ADD FOREIGN KEY([classRoomCode])
REFERENCES [dbo].[classroom] ([classRoomCode])
GO
ALTER TABLE [dbo].[register]  WITH CHECK ADD FOREIGN KEY([studentCode])
REFERENCES [dbo].[student] ([studentCode])
GO
