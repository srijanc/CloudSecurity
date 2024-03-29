/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_addCloudUserInfo]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_addCloudUserInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Cloud_UserReg_addCloudUserInfo]
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_Approve_Cloud_User]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_Approve_Cloud_User]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Cloud_UserReg_Approve_Cloud_User]
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_Delete_User_Info]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_Delete_User_Info]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Cloud_UserReg_Delete_User_Info]
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_get__User_Info_By_Email]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_get__User_Info_By_Email]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Cloud_UserReg_get__User_Info_By_Email]
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_get_Registered_User_Info]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_get_Registered_User_Info]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Cloud_UserReg_get_Registered_User_Info]
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_get_Update_User_Info]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_get_Update_User_Info]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Cloud_UserReg_get_Update_User_Info]
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_get_User_Info]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_get_User_Info]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Cloud_UserReg_get_User_Info]
GO
/****** Object:  StoredProcedure [dbo].[CloudUserReg_Authencate]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CloudUserReg_Authencate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CloudUserReg_Authencate]
GO
/****** Object:  StoredProcedure [dbo].[Files_add_File]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_add_File]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Files_add_File]
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_All_Approved_Files]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_All_Approved_Files]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Files_Get_All_Approved_Files]
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_All_Processing_Files]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_All_Processing_Files]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Files_Get_All_Processing_Files]
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_Cloud_User_Approved_Files]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_Cloud_User_Approved_Files]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Files_Get_Cloud_User_Approved_Files]
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_Cloud_User_Files]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_Cloud_User_Files]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Files_Get_Cloud_User_Files]
GO
/****** Object:  StoredProcedure [dbo].[Files_get_File_By_Id]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_get_File_By_Id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Files_get_File_By_Id]
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_Pending_File]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_Pending_File]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Files_Get_Pending_File]
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_TPA_Files]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_TPA_Files]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Files_Get_TPA_Files]
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_TPA_Requst_Accepted_Files]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_TPA_Requst_Accepted_Files]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Files_Get_TPA_Requst_Accepted_Files]
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_TPA_Requsted_Sent_Files]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_TPA_Requsted_Sent_Files]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Files_Get_TPA_Requsted_Sent_Files]
GO
/****** Object:  StoredProcedure [dbo].[Files_update_File]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_update_File]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Files_update_File]
GO
/****** Object:  StoredProcedure [dbo].[Get_TPA_By_Id]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Get_TPA_By_Id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Get_TPA_By_Id]
GO
/****** Object:  StoredProcedure [dbo].[ReuploadFiles_add_File]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReuploadFiles_add_File]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ReuploadFiles_add_File]
GO
/****** Object:  StoredProcedure [dbo].[ReuploadFiles_get_File_By_Id]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReuploadFiles_get_File_By_Id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ReuploadFiles_get_File_By_Id]
GO
/****** Object:  StoredProcedure [dbo].[TPA_addTPAInfo]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPA_addTPAInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TPA_addTPAInfo]
GO
/****** Object:  StoredProcedure [dbo].[TPA_Authenticate]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPA_Authenticate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TPA_Authenticate]
GO
/****** Object:  StoredProcedure [dbo].[TPA_Get_TPA_Info]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPA_Get_TPA_Info]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TPA_Get_TPA_Info]
GO
/****** Object:  StoredProcedure [dbo].[TPA_UpdateTPAInfo]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPA_UpdateTPAInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TPA_UpdateTPAInfo]
GO
/****** Object:  StoredProcedure [dbo].[TPARequest_add_TPA_Request]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPARequest_add_TPA_Request]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TPARequest_add_TPA_Request]
GO
/****** Object:  StoredProcedure [dbo].[TPARequest_Update_TPA_Request]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPARequest_Update_TPA_Request]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TPARequest_Update_TPA_Request]
GO
/****** Object:  StoredProcedure [dbo].[UserRequest_Accept_User_File_Request]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRequest_Accept_User_File_Request]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UserRequest_Accept_User_File_Request]
GO
/****** Object:  StoredProcedure [dbo].[UserRequest_add_User_File_Request]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRequest_add_User_File_Request]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UserRequest_add_User_File_Request]
GO
/****** Object:  StoredProcedure [dbo].[UserRequest_Check_User_File_Request_By_Id]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRequest_Check_User_File_Request_By_Id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UserRequest_Check_User_File_Request_By_Id]
GO
/****** Object:  StoredProcedure [dbo].[UserRequest_Get_User_File_Request_By_Email]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRequest_Get_User_File_Request_By_Email]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UserRequest_Get_User_File_Request_By_Email]
GO
/****** Object:  StoredProcedure [dbo].[UserRequest_Get_User_Request_Accepted_Files]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRequest_Get_User_Request_Accepted_Files]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UserRequest_Get_User_Request_Accepted_Files]
GO
/****** Object:  Table [dbo].[UserRequest]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRequest]') AND type in (N'U'))
DROP TABLE [dbo].[UserRequest]
GO
/****** Object:  Table [dbo].[TPARequest]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPARequest]') AND type in (N'U'))
DROP TABLE [dbo].[TPARequest]
GO
/****** Object:  Table [dbo].[TPA]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPA]') AND type in (N'U'))
DROP TABLE [dbo].[TPA]
GO
/****** Object:  Table [dbo].[ReuploadFile]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReuploadFile]') AND type in (N'U'))
DROP TABLE [dbo].[ReuploadFile]
GO
/****** Object:  Table [dbo].[Files]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files]') AND type in (N'U'))
DROP TABLE [dbo].[Files]
GO
/****** Object:  Table [dbo].[CloudUserReg]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CloudUserReg]') AND type in (N'U'))
DROP TABLE [dbo].[CloudUserReg]
GO
/****** Object:  Default [DF_CloudUserReg_CloudUserReg_IsActive]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CloudUserReg_CloudUserReg_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[CloudUserReg]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CloudUserReg_CloudUserReg_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CloudUserReg] DROP CONSTRAINT [DF_CloudUserReg_CloudUserReg_IsActive]
END


End
GO
/****** Object:  Default [DF_ReuploadFile_ReuploadFile_IsActive]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ReuploadFile_ReuploadFile_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReuploadFile]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ReuploadFile_ReuploadFile_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReuploadFile] DROP CONSTRAINT [DF_ReuploadFile_ReuploadFile_IsActive]
END


End
GO
/****** Object:  Default [DF_TPA_TPA_IsActive]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_TPA_TPA_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPA]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_TPA_TPA_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TPA] DROP CONSTRAINT [DF_TPA_TPA_IsActive]
END


End
GO
/****** Object:  Default [DF_TPARequest_TPARequest_IsActive]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_TPARequest_TPARequest_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPARequest]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_TPARequest_TPARequest_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TPARequest] DROP CONSTRAINT [DF_TPARequest_TPARequest_IsActive]
END


End
GO
/****** Object:  Default [DF_UserRequest_UserRequest_IsActive]    Script Date: 05/22/2014 21:26:12 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_UserRequest_UserRequest_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRequest]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserRequest_UserRequest_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserRequest] DROP CONSTRAINT [DF_UserRequest_UserRequest_IsActive]
END


End
GO
/****** Object:  Table [dbo].[CloudUserReg]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CloudUserReg]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CloudUserReg](
	[CloudUserReg_Id] [int] IDENTITY(1,1) NOT NULL,
	[CloudUserReg_Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CloudUserReg_Email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CloudUserReg_Password] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CloudUserReg_DOB] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CloudUserReg_Phone] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CloudUserReg_City] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CloudUserReg_State] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CloudUserReg_Country] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CloudUserReg_IsActive] [bit] NULL,
 CONSTRAINT [PK_CloudUserReg] PRIMARY KEY CLUSTERED 
(
	[CloudUserReg_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[CloudUserReg] ON
INSERT [dbo].[CloudUserReg] ([CloudUserReg_Id], [CloudUserReg_Name], [CloudUserReg_Email], [CloudUserReg_Password], [CloudUserReg_DOB], [CloudUserReg_Phone], [CloudUserReg_City], [CloudUserReg_State], [CloudUserReg_Country], [CloudUserReg_IsActive]) VALUES (1, N'Mohammed Younus', N'younus@veritonsoftware.com', N'younus', N'1990-09-158', N'9686370616', N'Mysore', N'Karnataka', N'India', 1)
INSERT [dbo].[CloudUserReg] ([CloudUserReg_Id], [CloudUserReg_Name], [CloudUserReg_Email], [CloudUserReg_Password], [CloudUserReg_DOB], [CloudUserReg_Phone], [CloudUserReg_City], [CloudUserReg_State], [CloudUserReg_Country], [CloudUserReg_IsActive]) VALUES (2, N'shabaaz', N'shabaaz@veritonsoftware.com', N'shabaaz', N'09-15-1990', N'8956231471', N'Mysore', N'Karnataka', N'India', 1)
INSERT [dbo].[CloudUserReg] ([CloudUserReg_Id], [CloudUserReg_Name], [CloudUserReg_Email], [CloudUserReg_Password], [CloudUserReg_DOB], [CloudUserReg_Phone], [CloudUserReg_City], [CloudUserReg_State], [CloudUserReg_Country], [CloudUserReg_IsActive]) VALUES (3, N'amith', N'amith@veritonsoftware.com', N'amith', N'25-mar-1990', N'8895652541', N'mysore', N'kar', N'ind', 1)
INSERT [dbo].[CloudUserReg] ([CloudUserReg_Id], [CloudUserReg_Name], [CloudUserReg_Email], [CloudUserReg_Password], [CloudUserReg_DOB], [CloudUserReg_Phone], [CloudUserReg_City], [CloudUserReg_State], [CloudUserReg_Country], [CloudUserReg_IsActive]) VALUES (5, N'Abdulmajeed Mys', N'amajeed@veritonsoftware.com', N'abdul', N'25-mar-1988', N'9986525412', N'mysore', N'kar', N'India', 1)
INSERT [dbo].[CloudUserReg] ([CloudUserReg_Id], [CloudUserReg_Name], [CloudUserReg_Email], [CloudUserReg_Password], [CloudUserReg_DOB], [CloudUserReg_Phone], [CloudUserReg_City], [CloudUserReg_State], [CloudUserReg_Country], [CloudUserReg_IsActive]) VALUES (9, N'varun 1', N'1amajeed@veritonsoftware.com', N'varun', N'23-mar-1988', N'8895626524', N'mys', N'kar', N'ind', 0)
INSERT [dbo].[CloudUserReg] ([CloudUserReg_Id], [CloudUserReg_Name], [CloudUserReg_Email], [CloudUserReg_Password], [CloudUserReg_DOB], [CloudUserReg_Phone], [CloudUserReg_City], [CloudUserReg_State], [CloudUserReg_Country], [CloudUserReg_IsActive]) VALUES (10, N'abdulmajeed', N'sampletestjava@gmail.cin', N'abdul', N'3-mar-1990', N'9986526521', N'mys', N'kar', N'ind', 1)
INSERT [dbo].[CloudUserReg] ([CloudUserReg_Id], [CloudUserReg_Name], [CloudUserReg_Email], [CloudUserReg_Password], [CloudUserReg_DOB], [CloudUserReg_Phone], [CloudUserReg_City], [CloudUserReg_State], [CloudUserReg_Country], [CloudUserReg_IsActive]) VALUES (11, N'asifa', N'asifa@gmail.com', N'asifa', N'3-mar-1990', N'9986526521', N'mys', N'kar', N'ind', 1)
INSERT [dbo].[CloudUserReg] ([CloudUserReg_Id], [CloudUserReg_Name], [CloudUserReg_Email], [CloudUserReg_Password], [CloudUserReg_DOB], [CloudUserReg_Phone], [CloudUserReg_City], [CloudUserReg_State], [CloudUserReg_Country], [CloudUserReg_IsActive]) VALUES (12, N'aa', N'hg@gmail.com', N'123', N'12-mar-1988', N'9986525412', N'mys', N'kar', N'ind', 1)
SET IDENTITY_INSERT [dbo].[CloudUserReg] OFF
/****** Object:  Table [dbo].[Files]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Files](
	[FK_Files_CloudUserReg_Id] [int] NULL,
	[FK_Files_TPA_Id] [int] NULL,
	[Files_FileName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Files_FilePath] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Files_Key] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Files_Date] [date] NULL,
	[Files_IsActive] [bit] NULL,
	[Files_Id] [int] IDENTITY(1,1) NOT NULL,
	[Files_TPA_Request] [bit] NULL,
 CONSTRAINT [PK__Files__4C9D09E90EA330E9] PRIMARY KEY CLUSTERED 
(
	[Files_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Files] ON
INSERT [dbo].[Files] ([FK_Files_CloudUserReg_Id], [FK_Files_TPA_Id], [Files_FileName], [Files_FilePath], [Files_Key], [Files_Date], [Files_IsActive], [Files_Id], [Files_TPA_Request]) VALUES (1, 1, N'campus Notebook DFD', N'05202014112446Anika_enc.txt', N'281514', CAST(0x3B380B00 AS Date), 0, 1, 0)
INSERT [dbo].[Files] ([FK_Files_CloudUserReg_Id], [FK_Files_TPA_Id], [Files_FileName], [Files_FilePath], [Files_Key], [Files_Date], [Files_IsActive], [Files_Id], [Files_TPA_Request]) VALUES (2, 1, N'test doc file', N'02282014162655test.docx', N'281655', CAST(0x3B380B00 AS Date), 0, 2, 0)
INSERT [dbo].[Files] ([FK_Files_CloudUserReg_Id], [FK_Files_TPA_Id], [Files_FileName], [Files_FilePath], [Files_Key], [Files_Date], [Files_IsActive], [Files_Id], [Files_TPA_Request]) VALUES (1, 1, N'testing123', N'04022014175446literaturesurveyonALERT.doc', N'21747', CAST(0x5C380B00 AS Date), 0, 3, 0)
INSERT [dbo].[Files] ([FK_Files_CloudUserReg_Id], [FK_Files_TPA_Id], [Files_FileName], [Files_FilePath], [Files_Key], [Files_Date], [Files_IsActive], [Files_Id], [Files_TPA_Request]) VALUES (5, 1, N'abdul file', N'04032014104933mysore.txt', N'31036', CAST(0x5D380B00 AS Date), 0, 4, 1)
INSERT [dbo].[Files] ([FK_Files_CloudUserReg_Id], [FK_Files_TPA_Id], [Files_FileName], [Files_FilePath], [Files_Key], [Files_Date], [Files_IsActive], [Files_Id], [Files_TPA_Request]) VALUES (1, 1, N'test', N'04092014184630dynamic.docx', N'91830', CAST(0x63380B00 AS Date), 0, 5, 0)
INSERT [dbo].[Files] ([FK_Files_CloudUserReg_Id], [FK_Files_TPA_Id], [Files_FileName], [Files_FilePath], [Files_Key], [Files_Date], [Files_IsActive], [Files_Id], [Files_TPA_Request]) VALUES (7, 1, N'sf', N'04102014154402login.txt', N'10152', CAST(0x64380B00 AS Date), 0, 6, 0)
INSERT [dbo].[Files] ([FK_Files_CloudUserReg_Id], [FK_Files_TPA_Id], [Files_FileName], [Files_FilePath], [Files_Key], [Files_Date], [Files_IsActive], [Files_Id], [Files_TPA_Request]) VALUES (5, 1, N'myfile', N'04112014191526AES.docx', N'111926', CAST(0x65380B00 AS Date), 1, 7, 1)
INSERT [dbo].[Files] ([FK_Files_CloudUserReg_Id], [FK_Files_TPA_Id], [Files_FileName], [Files_FilePath], [Files_Key], [Files_Date], [Files_IsActive], [Files_Id], [Files_TPA_Request]) VALUES (1, 1, N'123', N'04142014130344dummy.txt', N'141344', CAST(0x68380B00 AS Date), 0, 8, 0)
INSERT [dbo].[Files] ([FK_Files_CloudUserReg_Id], [FK_Files_TPA_Id], [Files_FileName], [Files_FilePath], [Files_Key], [Files_Date], [Files_IsActive], [Files_Id], [Files_TPA_Request]) VALUES (11, 2, N'my resume', N'042320141323572A.docx', N'231358', CAST(0x71380B00 AS Date), 1, 9, 1)
INSERT [dbo].[Files] ([FK_Files_CloudUserReg_Id], [FK_Files_TPA_Id], [Files_FileName], [Files_FilePath], [Files_Key], [Files_Date], [Files_IsActive], [Files_Id], [Files_TPA_Request]) VALUES (1, 1, N'mb', N'05022014185800backupCampus.txt', N'21927', CAST(0x7A380B00 AS Date), 0, 10, 0)
INSERT [dbo].[Files] ([FK_Files_CloudUserReg_Id], [FK_Files_TPA_Id], [Files_FileName], [Files_FilePath], [Files_Key], [Files_Date], [Files_IsActive], [Files_Id], [Files_TPA_Request]) VALUES (1, 1, N'testdemo', N'05192014182637Anika_enc.txt', N'73PZUXAM0', CAST(0x8B380B00 AS Date), 0, 11, 0)
SET IDENTITY_INSERT [dbo].[Files] OFF
/****** Object:  Table [dbo].[ReuploadFile]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReuploadFile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReuploadFile](
	[ReuploadFile_Id] [int] IDENTITY(1,1) NOT NULL,
	[FK_ReuploadFile_File_Id] [int] NULL,
	[ReuploadFile_Filepath] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ReuploadFile_IsActive] [bit] NULL,
 CONSTRAINT [PK_ReuploadFile] PRIMARY KEY CLUSTERED 
(
	[ReuploadFile_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ReuploadFile] ON
INSERT [dbo].[ReuploadFile] ([ReuploadFile_Id], [FK_ReuploadFile_File_Id], [ReuploadFile_Filepath], [ReuploadFile_IsActive]) VALUES (2, 7, N'04112014192000Abdulmajeed_Mys_myfile..docx', 1)
INSERT [dbo].[ReuploadFile] ([ReuploadFile_Id], [FK_ReuploadFile_File_Id], [ReuploadFile_Filepath], [ReuploadFile_IsActive]) VALUES (3, 9, N'04232014133230asifa_my_resume..docx', 1)
SET IDENTITY_INSERT [dbo].[ReuploadFile] OFF
/****** Object:  Table [dbo].[TPA]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TPA](
	[TPA_Id] [int] IDENTITY(1,1) NOT NULL,
	[TPA_Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TPA_Email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TPA_Password] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TPA_Phone] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TPA_City] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TPA_State] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TPA_Country] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TPA_IsActive] [bit] NULL,
 CONSTRAINT [PK_TPA] PRIMARY KEY CLUSTERED 
(
	[TPA_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[TPA] ON
INSERT [dbo].[TPA] ([TPA_Id], [TPA_Name], [TPA_Email], [TPA_Password], [TPA_Phone], [TPA_City], [TPA_State], [TPA_Country], [TPA_IsActive]) VALUES (1, N'Abdil Majeed', N'amajeed@veritonsoftware.com', N'abdul', N'7418529620', N'Mysore', N'Karnataka', N'India', 1)
INSERT [dbo].[TPA] ([TPA_Id], [TPA_Name], [TPA_Email], [TPA_Password], [TPA_Phone], [TPA_City], [TPA_State], [TPA_Country], [TPA_IsActive]) VALUES (2, N'muthulakshmi', N'lakshmi@gmail.com', N'lakshmi', N'9986526521', N'mys', N'kar', N'ind', 1)
SET IDENTITY_INSERT [dbo].[TPA] OFF
/****** Object:  Table [dbo].[TPARequest]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPARequest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TPARequest](
	[TPARequest_Id] [int] IDENTITY(1,1) NOT NULL,
	[FK_TPARequest_Files_Id] [int] NULL,
	[FK_TPARequest_TPA_id] [int] NULL,
	[TPARequest_IsActive] [bit] NULL,
 CONSTRAINT [PK_TPARequest] PRIMARY KEY CLUSTERED 
(
	[TPARequest_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[TPARequest] ON
INSERT [dbo].[TPARequest] ([TPARequest_Id], [FK_TPARequest_Files_Id], [FK_TPARequest_TPA_id], [TPARequest_IsActive]) VALUES (2, 7, 1, 1)
INSERT [dbo].[TPARequest] ([TPARequest_Id], [FK_TPARequest_Files_Id], [FK_TPARequest_TPA_id], [TPARequest_IsActive]) VALUES (3, 9, 2, 1)
INSERT [dbo].[TPARequest] ([TPARequest_Id], [FK_TPARequest_Files_Id], [FK_TPARequest_TPA_id], [TPARequest_IsActive]) VALUES (4, 4, 1, 1)
SET IDENTITY_INSERT [dbo].[TPARequest] OFF
/****** Object:  Table [dbo].[UserRequest]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRequest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserRequest](
	[UserRequest_Id] [int] IDENTITY(1,1) NOT NULL,
	[FK_UserRequest_Files_Id] [int] NULL,
	[FK_UserRequest_Sender_CloudUserReg_Id] [int] NULL,
	[FK_UserRequest_Receiver_CloudUserReg_Id] [int] NULL,
	[UserRequest_IsActive] [bit] NULL,
 CONSTRAINT [PK_UserRequest] PRIMARY KEY CLUSTERED 
(
	[UserRequest_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[UserRequest] ON
INSERT [dbo].[UserRequest] ([UserRequest_Id], [FK_UserRequest_Files_Id], [FK_UserRequest_Sender_CloudUserReg_Id], [FK_UserRequest_Receiver_CloudUserReg_Id], [UserRequest_IsActive]) VALUES (1, 1, 2, 1, 1)
SET IDENTITY_INSERT [dbo].[UserRequest] OFF
/****** Object:  StoredProcedure [dbo].[UserRequest_Get_User_Request_Accepted_Files]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRequest_Get_User_Request_Accepted_Files]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UserRequest_Get_User_Request_Accepted_Files]
	-- Add the parameters for the stored procedure here
	@Email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from 
	dbo.UserRequest,dbo.CloudUserReg,dbo.Files,dbo.TPA where
	FK_UserRequest_Sender_CloudUserReg_Id in (select
	CloudUserReg_Id from dbo.CloudUserReg where 
	CloudUserReg_Email = @Email)
	and UserRequest_IsActive = ''true'' and
	CloudUserReg_Id = FK_UserRequest_Receiver_CloudUserReg_Id and
	Files_Id = FK_UserRequest_Files_Id and
	TPA_Id = FK_Files_TPA_Id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UserRequest_Get_User_File_Request_By_Email]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRequest_Get_User_File_Request_By_Email]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UserRequest_Get_User_File_Request_By_Email]
	-- Add the parameters for the stored procedure here
	@Email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from 
	dbo.UserRequest,dbo.CloudUserReg,dbo.Files where
	FK_UserRequest_Receiver_CloudUserReg_Id in (select
	CloudUserReg_Id from dbo.CloudUserReg where 
	CloudUserReg_Email = @Email)
	and UserRequest_IsActive = ''false'' and
	CloudUserReg_Id = FK_UserRequest_Sender_CloudUserReg_Id and
	Files_Id = FK_UserRequest_Files_Id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UserRequest_Check_User_File_Request_By_Id]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRequest_Check_User_File_Request_By_Id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UserRequest_Check_User_File_Request_By_Id]
	-- Add the parameters for the stored procedure here
@Files_Id int,
@Email varchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.UserRequest
	where FK_UserRequest_Files_Id = @Files_Id and
	FK_UserRequest_Sender_CloudUserReg_Id in (select
	CloudUserReg_Id from dbo.CloudUserReg where CloudUserReg_Email = @Email)and
	FK_UserRequest_Receiver_CloudUserReg_Id in (select
	FK_Files_CloudUserReg_Id from dbo.Files where Files_Id = @Files_Id)
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UserRequest_add_User_File_Request]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRequest_add_User_File_Request]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UserRequest_add_User_File_Request]
	-- Add the parameters for the stored procedure here
	@Files_Id int,
	@Email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    declare @sid int;
    set @sid = (select CloudUserReg_Id from dbo.CloudUserReg
    where CloudUserReg_Email = @Email)
    
    declare @rid int;
    set @rid = (select FK_Files_CloudUserReg_Id from dbo.Files
    where Files_Id = @Files_Id)
    
	insert into dbo.UserRequest values
	(
	@Files_Id,
	@sid,
	@rid,	
	''false''
	)
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UserRequest_Accept_User_File_Request]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRequest_Accept_User_File_Request]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UserRequest_Accept_User_File_Request]
	-- Add the parameters for the stored procedure here
@Files_Id int,
@Email varchar(50),
@SenderEmail varchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update dbo.UserRequest set
	UserRequest_IsActive = ''true'' where
	FK_UserRequest_Files_Id = @Files_Id and
	FK_UserRequest_Receiver_CloudUserReg_Id in (select FK_Files_CloudUserReg_Id from dbo.Files where Files_Id = @Files_Id) and
	FK_UserRequest_Sender_CloudUserReg_Id in (select CloudUserReg_Id from dbo.CloudUserReg where CloudUserReg_Email = @SenderEmail)
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TPARequest_Update_TPA_Request]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPARequest_Update_TPA_Request]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TPARequest_Update_TPA_Request]
	-- Add the parameters for the stored procedure here
	@Files_Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update dbo.TPARequest set
	TPARequest_IsActive = ''true''
	where FK_TPARequest_Files_Id = @Files_Id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TPARequest_add_TPA_Request]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPARequest_add_TPA_Request]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TPARequest_add_TPA_Request]
	-- Add the parameters for the stored procedure here
	@Files_Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @Tid int;
	set @Tid = (select FK_Files_TPA_Id from dbo.Files
	where Files_Id = @Files_Id)
	
	update dbo.Files set Files_TPA_Request = ''true''
	where Files_Id = @Files_Id
	
	insert into dbo.TPARequest values
	(
	@Files_Id,
	@Tid,
	''false''
	)
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TPA_UpdateTPAInfo]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPA_UpdateTPAInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TPA_UpdateTPAInfo]
	-- Add the parameters for the stored procedure here
@TPA_Name	varchar(50),
	@TPA_Email varchar(50),
	@TPA_Password varchar(50),
	@TPA_Phone varchar(15),
	@TPA_City varchar(35),
	@TPA_State varchar(30),
	@TPA_Country varchar(30)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update dbo.TPA set TPA_Name = @TPA_Name,
	TPA_Password = @TPA_Password,
	TPA_Phone = @TPA_Phone,
	TPA_City = @TPA_City,
	TPA_State = @TPA_State,
	TPA_Country = @TPA_Country
	where TPA_Email = @TPA_Email
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TPA_Get_TPA_Info]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPA_Get_TPA_Info]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TPA_Get_TPA_Info]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.TPA
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TPA_Authenticate]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPA_Authenticate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TPA_Authenticate]
	-- Add the parameters for the stored procedure here
@TPA_Email varchar(50),
@TPA_Password varchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.TPA
	where TPA_Email = @TPA_Email and
	TPA_Password = @TPA_Password
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TPA_addTPAInfo]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPA_addTPAInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TPA_addTPAInfo]
	-- Add the parameters for the stored procedure here
	@TPA_Name	varchar(50),
	@TPA_Email varchar(50),
	@TPA_Password varchar(50),
	@TPA_Phone varchar(15),
	@TPA_City varchar(35),
	@TPA_State varchar(30),
	@TPA_Country varchar(30)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if not exists(select * from dbo.TPA
	where TPA_Email = @TPA_Email)
	begin
	insert into dbo.TPA values
	(
	@TPA_Name,
	@TPA_Email,
	@TPA_Password,
	@TPA_Phone,
	@TPA_City,
	@TPA_State,
	@TPA_Country,
	''true''
	)
	select 1 as ret
	end
	else
	begin
	select 0 as ret
	end	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ReuploadFiles_get_File_By_Id]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReuploadFiles_get_File_By_Id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ReuploadFiles_get_File_By_Id]
	-- Add the parameters for the stored procedure here
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.Files,dbo.CloudUserReg,dbo.TPA,dbo.ReuploadFile
	where 
	FK_Files_CloudUserReg_Id = CloudUserReg_Id and
	TPA_Id = FK_Files_TPA_Id and
	FK_ReuploadFile_File_Id = Files_Id
	and Files_IsActive = ''true''
	and Files_Id = @Id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ReuploadFiles_add_File]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReuploadFiles_add_File]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ReuploadFiles_add_File]
	-- Add the parameters for the stored procedure here
@Files_Id int,
@UploadFile varchar(max)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into dbo.ReuploadFile values
	(
	@Files_Id,
	@UploadFile,
	''true''
	)
	update dbo.Files set
	Files_IsActive = ''true''
	where Files_Id = @Files_Id
	
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Get_TPA_By_Id]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Get_TPA_By_Id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_TPA_By_Id]
	-- Add the parameters for the stored procedure here
	@F_Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from TPA where TPA_Id = @F_Id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Files_update_File]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_update_File]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Files_update_File]
	-- Add the parameters for the stored procedure here
	
	@F_Id int,
	@uploadFilepath varchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update dbo.Files set Files_FilePath = @uploadFilepath,
	Files_Date = GETDATE(),
	Files_IsActive = ''false'',Files_TPA_Request = ''false''
	where Files_Id = @F_Id
	
	if exists (select FK_ReuploadFile_File_Id from dbo.ReuploadFile where FK_ReuploadFile_File_Id = @F_Id)
	begin
	delete dbo.ReuploadFile where FK_ReuploadFile_File_Id = @F_Id
	end
	
	if exists (select FK_TPARequest_Files_Id from dbo.TPARequest where FK_TPARequest_Files_Id = @F_Id)
	begin
	delete dbo.TPARequest where FK_TPARequest_Files_Id = @F_Id
	end
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_TPA_Requsted_Sent_Files]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_TPA_Requsted_Sent_Files]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Files_Get_TPA_Requsted_Sent_Files]
	-- Add the parameters for the stored procedure here
	@Email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.TPARequest,dbo.Files,dbo.CloudUserReg,dbo.TPA
	where FK_TPARequest_Files_Id = Files_Id and
	FK_TPARequest_TPA_id = TPA_Id and
	CloudUserReg_Email = @Email and
	FK_Files_CloudUserReg_Id = CloudUserReg_Id and
	FK_Files_TPA_Id = TPA_Id and
	TPARequest_IsActive = ''false''
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_TPA_Requst_Accepted_Files]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_TPA_Requst_Accepted_Files]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Files_Get_TPA_Requst_Accepted_Files]
	-- Add the parameters for the stored procedure here
	@Email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.TPARequest,dbo.Files,dbo.CloudUserReg,dbo.TPA
	where FK_TPARequest_Files_Id = Files_Id and
	FK_TPARequest_TPA_id = TPA_Id and
	TPA_Email = @Email and
	FK_Files_CloudUserReg_Id = CloudUserReg_Id and
	FK_Files_TPA_Id = TPA_Id and
	TPARequest_IsActive = ''true''
	and Files_IsActive = ''false''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_TPA_Files]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_TPA_Files]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Files_Get_TPA_Files]
	-- Add the parameters for the stored procedure here
	@Email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.Files,dbo.TPA,dbo.CloudUserReg
	where FK_Files_TPA_Id = TPA_Id and
	FK_Files_CloudUserReg_Id = CloudUserReg_Id and
	TPA_Email = @Email and
	Files_IsActive = ''false'' and Files_TPA_Request = ''false''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_Pending_File]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_Pending_File]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Files_Get_Pending_File]
	-- Add the parameters for the stored procedure here
	@Email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    select * from dbo.Files,dbo.CloudUserReg,dbo.TPA
	where FK_Files_CloudUserReg_Id in (select CloudUserReg_Id
	from dbo.CloudUserReg where 
	CloudUserReg_Email = @Email)
	and Files_IsActive = ''false'' and
	FK_Files_CloudUserReg_Id = CloudUserReg_Id and
	FK_Files_TPA_Id = TPA_Id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Files_get_File_By_Id]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_get_File_By_Id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Files_get_File_By_Id]
	-- Add the parameters for the stored procedure here
	@Files_Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Files_FileName,CloudUserReg_Name,CloudUserReg_Email,Files_Key,Files_FilePath
	from dbo.Files,dbo.CloudUserReg where FK_Files_CloudUserReg_Id = CloudUserReg_Id and
	Files_Id = @Files_Id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_Cloud_User_Files]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_Cloud_User_Files]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Files_Get_Cloud_User_Files]
	-- Add the parameters for the stored procedure here
	@Email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.Files,dbo.CloudUserReg,dbo.TPA
	where 
	FK_Files_CloudUserReg_Id = CloudUserReg_Id and
	CloudUserReg_Email = @Email and
	TPA_Id = FK_Files_TPA_Id
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_Cloud_User_Approved_Files]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_Cloud_User_Approved_Files]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Files_Get_Cloud_User_Approved_Files]
	-- Add the parameters for the stored procedure here
	@Email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.Files,dbo.CloudUserReg,dbo.TPA,dbo.ReuploadFile
	where 
	FK_Files_CloudUserReg_Id = CloudUserReg_Id and
	CloudUserReg_Email = @Email and
	TPA_Id = FK_Files_TPA_Id and
	FK_ReuploadFile_File_Id = Files_Id
	and Files_IsActive = ''true''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_All_Processing_Files]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_All_Processing_Files]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Files_Get_All_Processing_Files]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.Files,dbo.CloudUserReg,dbo.TPA
	where 
	FK_Files_CloudUserReg_Id = CloudUserReg_Id and
	TPA_Id = FK_Files_TPA_Id	
	and Files_IsActive = ''false''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Files_Get_All_Approved_Files]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_Get_All_Approved_Files]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Files_Get_All_Approved_Files]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.Files,dbo.CloudUserReg,dbo.TPA,dbo.ReuploadFile
	where 
	FK_Files_CloudUserReg_Id = CloudUserReg_Id and
	TPA_Id = FK_Files_TPA_Id and
	FK_ReuploadFile_File_Id = Files_Id
	and Files_IsActive = ''true''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Files_add_File]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Files_add_File]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Files_add_File]
	-- Add the parameters for the stored procedure here
@User varchar(50),
@TPA int,
@FileName varchar(50),
@UploadFile varchar(max),
@Key varchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    declare @uid int;
    set @uid = (select CloudUserReg_Id from dbo.CloudUserReg
    where CloudUserReg_Email = @User);
    
	insert into dbo.Files values
	(
	@uid,
	@TPA,
	@FileName,
	@UploadFile,
	@Key,
	GETDATE(),
	''false'',
	''false''
	)
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[CloudUserReg_Authencate]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CloudUserReg_Authencate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CloudUserReg_Authencate]
	-- Add the parameters for the stored procedure here
	@CloudUserReg_Email varchar(50),
	@CloudUserReg_Password varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.CloudUserReg
	where CloudUserReg_Email = @CloudUserReg_Email and
	CloudUserReg_Password = @CloudUserReg_Password and
	CloudUserReg_IsActive = ''true''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_get_User_Info]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_get_User_Info]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Cloud_UserReg_get_User_Info]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CloudUserReg_Id,
	CloudUserReg_Name,
	CloudUserReg_Email,
	CloudUserReg_Phone,
	CloudUserReg_City,
	CloudUserReg_State,
	CloudUserReg_Country
	from dbo.CloudUserReg
	where CloudUserReg_IsActive = ''false''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_get_Update_User_Info]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_get_Update_User_Info]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Cloud_UserReg_get_Update_User_Info]
	-- Add the parameters for the stored procedure here
	@CloudUserReg_Id int,
		@CloudUserReg_Name varchar(50),
	
	@CloudUserReg_Password varchar(50),
	@CloudUserReg_DOB varchar(50),
	@CloudUserReg_Phone varchar(15),
	@CloudUserReg_City varchar(20),
	@CloudUserReg_State varchar(30),
	@CloudUserReg_Country varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update dbo.CloudUserReg set
	CloudUserReg_Name = @CloudUserReg_Name,
	CloudUserReg_Password = @CloudUserReg_Password,
	CloudUserReg_DOB = @CloudUserReg_DOB,
	CloudUserReg_Phone = @CloudUserReg_Phone,
	CloudUserReg_City = @CloudUserReg_City,
	CloudUserReg_State = @CloudUserReg_State,
	CloudUserReg_Country = @CloudUserReg_Country
	WHERE CloudUserReg_Id = @CloudUserReg_Id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_get_Registered_User_Info]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_get_Registered_User_Info]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Cloud_UserReg_get_Registered_User_Info]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from dbo.CloudUserReg where CloudUserReg_IsActive = ''true''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_get__User_Info_By_Email]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_get__User_Info_By_Email]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Cloud_UserReg_get__User_Info_By_Email]
	-- Add the parameters for the stored procedure here
	@email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.CloudUserReg where CloudUserReg_Email = @email
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_Delete_User_Info]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_Delete_User_Info]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Cloud_UserReg_Delete_User_Info]
	-- Add the parameters for the stored procedure here
	@CloudUserReg_Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete dbo.CloudUserReg
	where CloudUserReg_Id = @CloudUserReg_Id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_Approve_Cloud_User]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_Approve_Cloud_User]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Cloud_UserReg_Approve_Cloud_User]
	-- Add the parameters for the stored procedure here
	@CloudUserReg_Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update dbo.CloudUserReg set CloudUserReg_IsActive = ''true''
	where CloudUserReg_Id = @CloudUserReg_Id	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Cloud_UserReg_addCloudUserInfo]    Script Date: 05/22/2014 21:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cloud_UserReg_addCloudUserInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Cloud_UserReg_addCloudUserInfo]
	-- Add the parameters for the stored procedure here
	@CloudUserReg_Name varchar(50),
	@CloudUserReg_Email varchar(50),
	@CloudUserReg_Password varchar(50),
	@CloudUserReg_DOB varchar(50),
	@CloudUserReg_Phone varchar(15),
	@CloudUserReg_City varchar(20),
	@CloudUserReg_State varchar(30),
	@CloudUserReg_Country varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    if not exists(select * from dbo.CloudUserReg
    where CloudUserReg_Email = @CloudUserReg_Email)
    begin
	insert into dbo.CloudUserReg values(
	@CloudUserReg_Name,
	@CloudUserReg_Email,
	@CloudUserReg_Password,
	@CloudUserReg_DOB,
	@CloudUserReg_Phone,
	@CloudUserReg_City,
	@CloudUserReg_State,
	@CloudUserReg_Country,
	''false''
	)
	select 1 as ret
	end
	else
	begin
	select 0 as ret
	end
	
END
' 
END
GO
/****** Object:  Default [DF_CloudUserReg_CloudUserReg_IsActive]    Script Date: 05/22/2014 21:26:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CloudUserReg_CloudUserReg_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[CloudUserReg]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CloudUserReg_CloudUserReg_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CloudUserReg] ADD  CONSTRAINT [DF_CloudUserReg_CloudUserReg_IsActive]  DEFAULT ((1)) FOR [CloudUserReg_IsActive]
END


End
GO
/****** Object:  Default [DF_ReuploadFile_ReuploadFile_IsActive]    Script Date: 05/22/2014 21:26:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ReuploadFile_ReuploadFile_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReuploadFile]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ReuploadFile_ReuploadFile_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReuploadFile] ADD  CONSTRAINT [DF_ReuploadFile_ReuploadFile_IsActive]  DEFAULT ((1)) FOR [ReuploadFile_IsActive]
END


End
GO
/****** Object:  Default [DF_TPA_TPA_IsActive]    Script Date: 05/22/2014 21:26:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_TPA_TPA_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPA]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_TPA_TPA_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TPA] ADD  CONSTRAINT [DF_TPA_TPA_IsActive]  DEFAULT ((1)) FOR [TPA_IsActive]
END


End
GO
/****** Object:  Default [DF_TPARequest_TPARequest_IsActive]    Script Date: 05/22/2014 21:26:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_TPARequest_TPARequest_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPARequest]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_TPARequest_TPARequest_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TPARequest] ADD  CONSTRAINT [DF_TPARequest_TPARequest_IsActive]  DEFAULT ((1)) FOR [TPARequest_IsActive]
END


End
GO
/****** Object:  Default [DF_UserRequest_UserRequest_IsActive]    Script Date: 05/22/2014 21:26:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_UserRequest_UserRequest_IsActive]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRequest]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserRequest_UserRequest_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserRequest] ADD  CONSTRAINT [DF_UserRequest_UserRequest_IsActive]  DEFAULT ((1)) FOR [UserRequest_IsActive]
END


End
GO
