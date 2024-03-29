/****** Object:  ForeignKey [complaint$complaint_ibfk_1]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[complaint$complaint_ibfk_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[complaint]'))
ALTER TABLE [dbo].[complaint] DROP CONSTRAINT [complaint$complaint_ibfk_1]
GO
/****** Object:  ForeignKey [complaint$complaint_ibfk_2]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[complaint$complaint_ibfk_2]') AND parent_object_id = OBJECT_ID(N'[dbo].[complaint]'))
ALTER TABLE [dbo].[complaint] DROP CONSTRAINT [complaint$complaint_ibfk_2]
GO
/****** Object:  ForeignKey [order$order_ibfk_1]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order$order_ibfk_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
ALTER TABLE [dbo].[order] DROP CONSTRAINT [order$order_ibfk_1]
GO
/****** Object:  ForeignKey [order$order_ibfk_2]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order$order_ibfk_2]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
ALTER TABLE [dbo].[order] DROP CONSTRAINT [order$order_ibfk_2]
GO
/****** Object:  ForeignKey [order$order_ibfk_3]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order$order_ibfk_3]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
ALTER TABLE [dbo].[order] DROP CONSTRAINT [order$order_ibfk_3]
GO
/****** Object:  ForeignKey [order_product$order_product_ibfk_1]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order_product$order_product_ibfk_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[order_product]'))
ALTER TABLE [dbo].[order_product] DROP CONSTRAINT [order_product$order_product_ibfk_1]
GO
/****** Object:  ForeignKey [order_product$order_product_ibfk_2]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order_product$order_product_ibfk_2]') AND parent_object_id = OBJECT_ID(N'[dbo].[order_product]'))
ALTER TABLE [dbo].[order_product] DROP CONSTRAINT [order_product$order_product_ibfk_2]
GO
/****** Object:  ForeignKey [user$user_ibfk_1]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[user$user_ibfk_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
ALTER TABLE [dbo].[user] DROP CONSTRAINT [user$user_ibfk_1]
GO
/****** Object:  Table [dbo].[complaint]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[complaint]') AND type in (N'U'))
DROP TABLE [dbo].[complaint]
GO
/****** Object:  Table [dbo].[order_product]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_product]') AND type in (N'U'))
DROP TABLE [dbo].[order_product]
GO
/****** Object:  Table [dbo].[order]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order]') AND type in (N'U'))
DROP TABLE [dbo].[order]
GO
/****** Object:  Table [dbo].[user]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[payment]') AND type in (N'U'))
DROP TABLE [dbo].[payment]
GO
/****** Object:  Table [dbo].[product]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type in (N'U'))
DROP TABLE [dbo].[product]
GO
/****** Object:  Table [dbo].[project]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project]') AND type in (N'U'))
DROP TABLE [dbo].[project]
GO
/****** Object:  Table [dbo].[country]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[country]') AND type in (N'U'))
DROP TABLE [dbo].[country]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[feedback]') AND type in (N'U'))
DROP TABLE [dbo].[feedback]
GO
/****** Object:  Default [DF__complaint__creat__7E6CC920]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__complaint__creat__7E6CC920]') AND parent_object_id = OBJECT_ID(N'[dbo].[complaint]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__complaint__creat__7E6CC920]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[complaint] DROP CONSTRAINT [DF__complaint__creat__7E6CC920]
END


End
GO
/****** Object:  Default [DF__country__iso2__00551192]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__country__iso2__00551192]') AND parent_object_id = OBJECT_ID(N'[dbo].[country]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__country__iso2__00551192]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[country] DROP CONSTRAINT [DF__country__iso2__00551192]
END


End
GO
/****** Object:  Default [DF__country__iso3__014935CB]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__country__iso3__014935CB]') AND parent_object_id = OBJECT_ID(N'[dbo].[country]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__country__iso3__014935CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[country] DROP CONSTRAINT [DF__country__iso3__014935CB]
END


End
GO
/****** Object:  Default [DF__feedback__rating__03317E3D]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__feedback__rating__03317E3D]') AND parent_object_id = OBJECT_ID(N'[dbo].[feedback]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__feedback__rating__03317E3D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[feedback] DROP CONSTRAINT [DF__feedback__rating__03317E3D]
END


End
GO
/****** Object:  Default [DF__feedback__create__0425A276]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__feedback__create__0425A276]') AND parent_object_id = OBJECT_ID(N'[dbo].[feedback]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__feedback__create__0425A276]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[feedback] DROP CONSTRAINT [DF__feedback__create__0425A276]
END


End
GO
/****** Object:  Default [DF__order__name__060DEAE8]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__name__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__name__060DEAE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] DROP CONSTRAINT [DF__order__name__060DEAE8]
END


End
GO
/****** Object:  Default [DF__order__address__07020F21]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__address__07020F21]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__address__07020F21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] DROP CONSTRAINT [DF__order__address__07020F21]
END


End
GO
/****** Object:  Default [DF__order__city__07F6335A]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__city__07F6335A]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__city__07F6335A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] DROP CONSTRAINT [DF__order__city__07F6335A]
END


End
GO
/****** Object:  Default [DF__order__country_i__08EA5793]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__country_i__08EA5793]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__country_i__08EA5793]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] DROP CONSTRAINT [DF__order__country_i__08EA5793]
END


End
GO
/****** Object:  Default [DF__order__phone__09DE7BCC]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__phone__09DE7BCC]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__phone__09DE7BCC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] DROP CONSTRAINT [DF__order__phone__09DE7BCC]
END


End
GO
/****** Object:  Default [DF__order__status__0AD2A005]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__status__0AD2A005]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__status__0AD2A005]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] DROP CONSTRAINT [DF__order__status__0AD2A005]
END


End
GO
/****** Object:  Default [DF__order__created__0BC6C43E]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__created__0BC6C43E]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__created__0BC6C43E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] DROP CONSTRAINT [DF__order__created__0BC6C43E]
END


End
GO
/****** Object:  Default [DF__payment__status__0EA330E9]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__payment__status__0EA330E9]') AND parent_object_id = OBJECT_ID(N'[dbo].[payment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__payment__status__0EA330E9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[payment] DROP CONSTRAINT [DF__payment__status__0EA330E9]
END


End
GO
/****** Object:  Default [DF__product__price__108B795B]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__product__price__108B795B]') AND parent_object_id = OBJECT_ID(N'[dbo].[product]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__product__price__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[product] DROP CONSTRAINT [DF__product__price__108B795B]
END


End
GO
/****** Object:  Default [DF__product__status__117F9D94]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__product__status__117F9D94]') AND parent_object_id = OBJECT_ID(N'[dbo].[product]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__product__status__117F9D94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[product] DROP CONSTRAINT [DF__product__status__117F9D94]
END


End
GO
/****** Object:  Default [DF__product__created__1273C1CD]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__product__created__1273C1CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[product]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__product__created__1273C1CD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[product] DROP CONSTRAINT [DF__product__created__1273C1CD]
END


End
GO
/****** Object:  Default [DF__project__status__145C0A3F]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__project__status__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[project]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__project__status__145C0A3F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[project] DROP CONSTRAINT [DF__project__status__145C0A3F]
END


End
GO
/****** Object:  Default [DF__project__created__15502E78]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__project__created__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[project]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__project__created__15502E78]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[project] DROP CONSTRAINT [DF__project__created__15502E78]
END


End
GO
/****** Object:  Default [DF__user__address__173876EA]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__address__173876EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__address__173876EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__address__173876EA]
END


End
GO
/****** Object:  Default [DF__user__city__182C9B23]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__city__182C9B23]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__city__182C9B23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__city__182C9B23]
END


End
GO
/****** Object:  Default [DF__user__country_id__1920BF5C]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__country_id__1920BF5C]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__country_id__1920BF5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__country_id__1920BF5C]
END


End
GO
/****** Object:  Default [DF__user__phone__1A14E395]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__phone__1A14E395]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__phone__1A14E395]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__phone__1A14E395]
END


End
GO
/****** Object:  Default [DF__user__company__1B0907CE]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__company__1B0907CE]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__company__1B0907CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__company__1B0907CE]
END


End
GO
/****** Object:  Default [DF__user__type__1BFD2C07]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__type__1BFD2C07]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__type__1BFD2C07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__type__1BFD2C07]
END


End
GO
/****** Object:  Default [DF__user__status__1CF15040]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__status__1CF15040]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__status__1CF15040]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__status__1CF15040]
END


End
GO
/****** Object:  Default [DF__user__created__1DE57479]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__created__1DE57479]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__created__1DE57479]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__created__1DE57479]
END


End
GO
/****** Object:  Schema [m2ss]    Script Date: 11/26/2012 18:08:55 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'm2ss')
DROP SCHEMA [m2ss]
GO
/****** Object:  Schema [m2ss]    Script Date: 11/26/2012 18:08:55 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'm2ss')
EXEC sys.sp_executesql N'CREATE SCHEMA [m2ss] AUTHORIZATION [dbo]'
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 11/26/2012 18:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[feedback]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[feedback](
	[id] [int] IDENTITY(9,1) NOT NULL,
	[name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[email] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[description] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[rating] [int] NOT NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_feedback_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'feedback', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'elevation.feedback' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'feedback'
GO
SET IDENTITY_INSERT [dbo].[feedback] ON
INSERT [dbo].[feedback] ([id], [name], [email], [description], [rating], [created]) VALUES (2, N'test', N'a@b.com', N'this is a  test', 1, CAST(0x0000A10E00CEFF04 AS DateTime))
INSERT [dbo].[feedback] ([id], [name], [email], [description], [rating], [created]) VALUES (3, N'asd gsg', N'a@bfd.com', N'asd  fd hdfhngn fn34 y4ehrjtr', 10, CAST(0x0000A10E00CEFF04 AS DateTime))
INSERT [dbo].[feedback] ([id], [name], [email], [description], [rating], [created]) VALUES (4, N'123asd gsg', N'5435a@bfd.com', N' 64564asd  fd hdfhngn fn34 y4ehrjtr', 7, CAST(0x0000A10E00CF3D20 AS DateTime))
INSERT [dbo].[feedback] ([id], [name], [email], [description], [rating], [created]) VALUES (5, N'Long', N'hunglong@dynabyte.vn', N'34', 5, CAST(0x0000A10E011AFD50 AS DateTime))
INSERT [dbo].[feedback] ([id], [name], [email], [description], [rating], [created]) VALUES (6, N'235 3yrtjhrj ', N'5435a@bfd.com', N'  fdhfgj hjk jk tykjty', 9, CAST(0x0000A10F01205160 AS DateTime))
INSERT [dbo].[feedback] ([id], [name], [email], [description], [rating], [created]) VALUES (8, N'Long prao ', N'a@b.com', N'bbbbbbbbbbb', 10, CAST(0x0000A112010684B0 AS DateTime))
SET IDENTITY_INSERT [dbo].[feedback] OFF
/****** Object:  Table [dbo].[country]    Script Date: 11/26/2012 18:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[country](
	[id] [int] IDENTITY(249,1) NOT NULL,
	[name] [nvarchar](63) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[iso2] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[iso3] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_country_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'country', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'elevation.country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'country'
GO
SET IDENTITY_INSERT [dbo].[country] ON
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (1, N'VIET NAM', N'VN', N'VNM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (2, N'AFGHANISTAN', N'AF', N'AFG')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (3, N'ALAND ISLANDS', N'AX', N'ALA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (4, N'ALBANIA', N'AL', N'ALB')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (5, N'ALGERIA', N'DZ', N'DZA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (6, N'AMERICAN SAMOA', N'AS', N'ASM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (7, N'ANDORRA', N'AD', N'AND')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (8, N'ANGOLA', N'AO', N'AGO')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (9, N'ANGUILLA', N'AI', N'AIA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (10, N'ANTARCTICA', N'AQ', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (11, N'ANTIGUA AND BARBUDA', N'AG', N'ATG')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (12, N'ARGENTINA', N'AR', N'ARG')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (13, N'ARMENIA', N'AM', N'ARM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (14, N'ARUBA', N'AW', N'ABW')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (15, N'AUSTRALIA', N'AU', N'AUS')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (16, N'AUSTRIA', N'AT', N'AUT')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (17, N'AZERBAIJAN', N'AZ', N'AZE')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (18, N'BAHAMAS', N'BS', N'BHS')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (19, N'BAHRAIN', N'BH', N'BHR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (20, N'BANGLADESH', N'BD', N'BGD')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (21, N'BARBADOS', N'BB', N'BRB')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (22, N'BELARUS', N'BY', N'BLR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (23, N'BELGIUM', N'BE', N'BEL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (24, N'BELIZE', N'BZ', N'BLZ')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (25, N'BENIN', N'BJ', N'BEN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (26, N'BERMUDA', N'BM', N'BMU')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (27, N'BHUTAN', N'BT', N'BTN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (28, N'BOLIVIA, PLURINATIONAL STATE OF', N'BO', N'BOL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (29, N'BONAIRE, SINT EUSTATIUS AND SABA', N'BQ', N'BES')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (30, N'BOSNIA AND HERZEGOVINA', N'BA', N'BIH')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (31, N'BOTSWANA', N'BW', N'BWA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (32, N'BOUVET ISLAND', N'BV', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (33, N'BRAZIL', N'BR', N'BRA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (34, N'BRITISH INDIAN OCEAN TERRITORY', N'IO', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (35, N'BRUNEI DARUSSALAM', N'BN', N'BRN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (36, N'BULGARIA', N'BG', N'BGR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (37, N'BURKINA FASO', N'BF', N'BFA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (38, N'BURUNDI', N'BI', N'BDI')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (39, N'CAMBODIA', N'KH', N'KHM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (40, N'CAMEROON', N'CM', N'CMR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (41, N'CANADA', N'CA', N'CAN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (42, N'CAPE VERDE', N'CV', N'CPV')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (43, N'CAYMAN ISLANDS', N'KY', N'CYM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (44, N'CENTRAL AFRICAN REPUBLIC', N'CF', N'CAF')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (45, N'CHAD', N'TD', N'TCD')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (46, N'CHILE', N'CL', N'CHL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (47, N'CHINA', N'CN', N'CHN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (48, N'CHRISTMAS ISLAND', N'CX', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (49, N'COCOS (KEELING) ISLANDS', N'CC', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (50, N'COLOMBIA', N'CO', N'COL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (51, N'COMOROS', N'KM', N'COM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (52, N'CONGO', N'CG', N'COD')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (53, N'CONGO, THE DEMOCRATIC REPUBLIC OF THE', N'CD', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (54, N'COOK ISLANDS', N'CK', N'COK')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (55, N'COSTA RICA', N'CR', N'CRI')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (56, N'COTE D''IVOIRE', N'CI', N'CIV')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (57, N'CROATIA', N'HR', N'HRV')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (58, N'CUBA', N'CU', N'CUB')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (59, N'CURACAO', N'CW', N'CUW')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (60, N'CYPRUS', N'CY', N'CYP')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (61, N'CZECH REPUBLIC', N'CZ', N'CZE')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (62, N'DENMARK', N'DK', N'DNK')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (63, N'DJIBOUTI', N'DJ', N'DJI')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (64, N'DOMINICA', N'DM', N'DMA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (65, N'DOMINICAN REPUBLIC', N'DO', N'DOM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (66, N'ECUADOR', N'EC', N'ECU')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (67, N'EGYPT', N'EG', N'EGY')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (68, N'EL SALVADOR', N'SV', N'SLV')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (69, N'EQUATORIAL GUINEA', N'GQ', N'GNQ')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (70, N'ERITREA', N'ER', N'ERI')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (71, N'ESTONIA', N'EE', N'EST')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (72, N'ETHIOPIA', N'ET', N'ETH')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (73, N'FALKLAND ISLANDS (MALVINAS)', N'FK', N'FLK')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (74, N'FAROE ISLANDS', N'FO', N'FRO')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (75, N'FIJI', N'FJ', N'FJI')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (76, N'FINLAND', N'FI', N'FIN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (77, N'FRANCE', N'FR', N'FRA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (78, N'FRENCH GUIANA', N'GF', N'GUF')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (79, N'FRENCH POLYNESIA', N'PF', N'PYF')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (80, N'FRENCH SOUTHERN TERRITORIES', N'TF', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (81, N'GABON', N'GA', N'GAB')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (82, N'GAMBIA', N'GM', N'GMB')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (83, N'GEORGIA', N'GE', N'GEO')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (84, N'GERMANY', N'DE', N'DEU')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (85, N'GHANA', N'GH', N'GHA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (86, N'GIBRALTAR', N'GI', N'GIB')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (87, N'GREECE', N'GR', N'GRC')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (88, N'GREENLAND', N'GL', N'GRL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (89, N'GRENADA', N'GD', N'GRD')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (90, N'GUADELOUPE', N'GP', N'GLP')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (91, N'GUAM', N'GU', N'GUM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (92, N'GUATEMALA', N'GT', N'GTM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (93, N'GUERNSEY', N'GG', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (94, N'GUINEA', N'GN', N'GIN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (95, N'GUINEA-BISSAU', N'GW', N'GNB')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (96, N'GUYANA', N'GY', N'GUY')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (97, N'HAITI', N'HT', N'HTI')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (98, N'HEARD ISLAND AND MCDONALD ISLANDS', N'HM', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (99, N'HOLY SEE (VATICAN CITY STATE)', N'VA', N'VAT')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (100, N'HONDURAS', N'HN', N'HND')
GO
print 'Processed 100 total records'
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (101, N'HONG KONG', N'HK', N'HKG')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (102, N'HUNGARY', N'HU', N'HUN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (103, N'ICELAND', N'IS', N'ISL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (104, N'INDIA', N'IN', N'IND')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (105, N'INDONESIA', N'ID', N'IDN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (106, N'IRAN, ISLAMIC REPUBLIC OF', N'IR', N'IRN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (107, N'IRAQ', N'IQ', N'IRQ')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (108, N'IRELAND', N'IE', N'IRL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (109, N'ISLE OF MAN', N'IM', N'IMN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (110, N'ISRAEL', N'IL', N'ISR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (111, N'ITALY', N'IT', N'ITA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (112, N'JAMAICA', N'JM', N'JAM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (113, N'JAPAN', N'JP', N'JPN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (114, N'JERSEY', N'JE', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (115, N'JORDAN', N'JO', N'JOR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (116, N'KAZAKHSTAN', N'KZ', N'KAZ')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (117, N'KENYA', N'KE', N'KEN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (118, N'KIRIBATI', N'KI', N'KIR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (119, N'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', N'KP', N'PRK')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (120, N'KOREA, REPUBLIC OF', N'KR', N'KOR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (121, N'KUWAIT', N'KW', N'KWT')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (122, N'KYRGYZSTAN', N'KG', N'KGZ')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (123, N'LAO PEOPLE''S DEMOCRATIC REPUBLIC', N'LA', N'LAO')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (124, N'LATVIA', N'LV', N'LVA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (125, N'LEBANON', N'LB', N'LBN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (126, N'LESOTHO', N'LS', N'LSO')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (127, N'LIBERIA', N'LR', N'LBR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (128, N'LIBYAN ARAB JAMAHIRIYA', N'LY', N'LBY')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (129, N'LIECHTENSTEIN', N'LI', N'LIE')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (130, N'LITHUANIA', N'LT', N'LTU')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (131, N'LUXEMBOURG', N'LU', N'LUX')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (132, N'MACAO', N'MO', N'MAC')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (133, N'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', N'MK', N'MKD')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (134, N'MADAGASCAR', N'MG', N'MDG')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (135, N'MALAWI', N'MW', N'MWI')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (136, N'MALAYSIA', N'MY', N'MYS')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (137, N'MALDIVES', N'MV', N'MDV')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (138, N'MALI', N'ML', N'MLI')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (139, N'MALTA', N'MT', N'MLT')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (140, N'MARSHALL ISLANDS', N'MH', N'MHL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (141, N'MARTINIQUE', N'MQ', N'MTQ')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (142, N'MAURITANIA', N'MR', N'MRT')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (143, N'MAURITIUS', N'MU', N'MUS')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (144, N'MAYOTTE', N'YT', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (145, N'MEXICO', N'MX', N'MEX')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (146, N'MICRONESIA, FEDERATED STATES OF', N'FM', N'FSM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (147, N'MOLDOVA, REPUBLIC OF', N'MD', N'MDA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (148, N'MONACO', N'MC', N'MCO')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (149, N'MONGOLIA', N'MN', N'MNG')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (150, N'MONTENEGRO', N'ME', N'MNE')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (151, N'MONTSERRAT', N'MS', N'MSR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (152, N'MOROCCO', N'MA', N'MAR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (153, N'MOZAMBIQUE', N'MZ', N'MOZ')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (154, N'MYANMAR', N'MM', N'MMR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (155, N'NAMIBIA', N'NA', N'NAM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (156, N'NAURU', N'NR', N'NRU')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (157, N'NEPAL', N'NP', N'NPL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (158, N'NETHERLANDS', N'NL', N'NLD')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (159, N'NEW CALEDONIA', N'NC', N'NCL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (160, N'NEW ZEALAND', N'NZ', N'NZL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (161, N'NICARAGUA', N'NI', N'NIC')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (162, N'NIGER', N'NE', N'NER')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (163, N'NIGERIA', N'NG', N'NGA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (164, N'NIUE', N'NU', N'NIU')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (165, N'NORFOLK ISLAND', N'NF', N'NFK')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (166, N'NORTHERN MARIANA ISLANDS', N'MP', N'MNP')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (167, N'NORWAY', N'NO', N'NOR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (168, N'OMAN', N'OM', N'OMN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (169, N'PAKISTAN', N'PK', N'PAK')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (170, N'PALAU', N'PW', N'PLW')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (171, N'PALESTINIAN TERRITORY, OCCUPIED', N'PS', N'PSE')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (172, N'PANAMA', N'PA', N'PAN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (173, N'PAPUA NEW GUINEA', N'PG', N'PNG')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (174, N'PARAGUAY', N'PY', N'PRY')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (175, N'PERU', N'PE', N'PER')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (176, N'PHILIPPINES', N'PH', N'PHL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (177, N'PITCAIRN', N'PN', N'PCN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (178, N'POLAND', N'PL', N'POL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (179, N'PORTUGAL', N'PT', N'PRT')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (180, N'PUERTO RICO', N'PR', N'PRI')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (181, N'QATAR', N'QA', N'QAT')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (182, N'REUNION', N'RE', N'REU')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (183, N'ROMANIA', N'RO', N'ROU')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (184, N'RUSSIAN FEDERATION', N'RU', N'RUS')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (185, N'RWANDA', N'RW', N'RWA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (186, N'SAINT BARTHELEMY', N'BL', N'BLM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (187, N'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA', N'SH', N'SHN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (188, N'SAINT KITTS AND NEVIS', N'KN', N'KNA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (189, N'SAINT LUCIA', N'LC', N'LCA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (190, N'SAINT MARTIN (FRENCH PART)', N'MF', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (191, N'SAINT PIERRE AND MIQUELON', N'PM', N'SPM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (192, N'SAINT VINCENT AND THE GRENADINES', N'VC', N'VCT')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (193, N'SAMOA', N'WS', N'WSM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (194, N'SAN MARINO', N'SM', N'SMR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (195, N'SAO TOME AND PRINCIPE', N'ST', N'STP')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (196, N'SAUDI ARABIA', N'SA', N'SAU')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (197, N'SENEGAL', N'SN', N'SEN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (198, N'SERBIA', N'RS', N'SRB')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (199, N'SEYCHELLES', N'SC', N'SYC')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (200, N'SIERRA LEONE', N'SL', N'SLE')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (201, N'SINGAPORE', N'SG', N'SGP')
GO
print 'Processed 200 total records'
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (202, N'SINT MAARTEN (DUTCH PART)', N'SX', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (203, N'SLOVAKIA', N'SK', N'SVK')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (204, N'SLOVENIA', N'SI', N'SVN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (205, N'SOLOMON ISLANDS', N'SB', N'SLB')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (206, N'SOMALIA', N'SO', N'SOM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (207, N'SOUTH AFRICA', N'ZA', N'ZAF')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (208, N'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', N'GS', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (209, N'SPAIN', N'ES', N'ESP')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (210, N'SRI LANKA', N'LK', N'LKA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (211, N'SUDAN', N'SD', N'SDN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (212, N'SURINAME', N'SR', N'SUR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (213, N'SVALBARD AND JAN MAYEN', N'SJ', N'SJM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (214, N'SWAZILAND', N'SZ', N'SWZ')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (215, N'SWEDEN', N'SE', N'SWE')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (216, N'SWITZERLAND', N'CH', N'CHE')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (217, N'SYRIAN ARAB REPUBLIC', N'SY', N'SYR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (218, N'TAIWAN, PROVINCE OF CHINA', N'TW', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (219, N'TAJIKISTAN', N'TJ', N'TJK')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (220, N'TANZANIA, UNITED REPUBLIC OF', N'TZ', N'TZA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (221, N'THAILAND', N'TH', N'THA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (222, N'TIMOR-LESTE', N'TL', N'TLS')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (223, N'TOGO', N'TG', N'TGO')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (224, N'TOKELAU', N'TK', N'TKL')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (225, N'TONGA', N'TO', N'TON')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (226, N'TRINIDAD AND TOBAGO', N'TT', N'TTO')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (227, N'TUNISIA', N'TN', N'TUN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (228, N'TURKEY', N'TR', N'TUR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (229, N'TURKMENISTAN', N'TM', N'TKM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (230, N'TURKS AND CAICOS ISLANDS', N'TC', N'TCA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (231, N'TUVALU', N'TV', N'TUV')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (232, N'UGANDA', N'UG', N'UGA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (233, N'UKRAINE', N'UA', N'UKR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (234, N'UNITED ARAB EMIRATES', N'AE', N'ARE')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (235, N'UNITED KINGDOM', N'GB', N'GBR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (236, N'UNITED STATES', N'US', N'USA')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (237, N'UNITED STATES MINOR OUTLYING ISLANDS', N'UM', N'')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (238, N'URUGUAY', N'UY', N'URY')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (239, N'UZBEKISTAN', N'UZ', N'UZB')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (240, N'VANUATU', N'VU', N'VUT')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (241, N'VENEZUELA, BOLIVARIAN REPUBLIC OF', N'VE', N'VEN')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (242, N'VIRGIN ISLANDS, BRITISH', N'VG', N'VGB')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (243, N'VIRGIN ISLANDS, U.S.', N'VI', N'VIR')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (244, N'WALLIS AND FUTUNA', N'WF', N'WLF')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (245, N'WESTERN SAHARA', N'EH', N'ESH')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (246, N'YEMEN', N'YE', N'YEM')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (247, N'ZAMBIA', N'ZM', N'ZMB')
INSERT [dbo].[country] ([id], [name], [iso2], [iso3]) VALUES (248, N'ZIMBABWE', N'ZW', N'ZWE')
SET IDENTITY_INSERT [dbo].[country] OFF
/****** Object:  Table [dbo].[project]    Script Date: 11/26/2012 18:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[project](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[description] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [int] NOT NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_project_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'project', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'elevation.project' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project'
GO
/****** Object:  Table [dbo].[product]    Script Date: 11/26/2012 18:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[description] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[price] [real] NULL,
	[status] [int] NOT NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_product_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'product', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'elevation.product' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product'
GO
SET IDENTITY_INSERT [dbo].[product] ON
INSERT [dbo].[product] ([id], [name], [description], [price], [status], [created]) VALUES (1, N'Sightseeing Elevator', N'Vivamus tincidunt velit varius ante aliquam rhoncus. Mauris non cursus arcu. Duis vel aliquet mauris. Duis gravida, urna at ullamcorper lobortis, dui diam hendrerit ante, eget varius augue quam quis mauris. Sed quis ligula hendrerit libero viverra venenatis. Maecenas ut dictum massa. Nam venenatis, orci quis rhoncus rhoncus, leo ipsum suscipit massa, quis faucibus nunc libero eget risus. Mauris posuere mi at mauris gravida scelerisque. Vivamus pharetra dapibus nulla. Sed odio justo, consequat et pulvinar eu, vestibulum sed metus. Proin aliquam erat et quam sollicitudin pharetra. Cras augue nibh, sagittis ac ullamcorper vel, varius vel arcu. Praesent nec justo sed sapien luctus lacinia. Etiam dictum lobortis leo eget ullamcorper. Etiam vel rutrum felis. Donec mattis molestie quam, vitae tincidunt dui vulputate sit amet.
<br><br>
Nulla eu justo ac leo facilisis tincidunt. Nullam vel felis ipsum, sit amet semper leo. Morbi vel arcu suscipit tortor hendrerit tristique id quis odio. Nullam eget sapien ut diam pretium congue at at est. Morbi facilisis arcu eget erat dignissim sed adipiscing dui tristique. Vestibulum vehicula nisi turpis, ac ultrices lacus. Curabitur viverra varius lorem sed egestas.
<br><br>
Ut venenatis sollicitudin tempus. Aliquam venenatis odio nisl. Pellentesque id risus quis velit tincidunt condimentum id ac velit. Proin libero mauris, rhoncus nec vehicula nec, pharetra in urna. Proin ut dolor at nisi suscipit sagittis. Quisque ullamcorper, dolor sed luctus rutrum, enim eros blandit risus, vitae eleifend risus nisl sed elit. Morbi cursus aliquam tempus. In quis mi tortor. Donec pellentesque viverra mi nec cursus. Nullam aliquam condimentum dolor, ac ullamcorper libero dictum quis. Aliquam erat volutpat. Aenean sit amet cursus justo. Nulla placerat purus nec magna fringilla aliquam.', 1500, 1, CAST(0x0000A115002C93B8 AS DateTime))
INSERT [dbo].[product] ([id], [name], [description], [price], [status], [created]) VALUES (2, N'Electric Elevator For High Rise Buildings ', N'Aliquam erat volutpat. Nullam dictum mi sed lacus sagittis pulvinar. Ut odio ante, sodales sit amet aliquet vel, placerat non nisi. Pellentesque viverra turpis nec lorem ultrices ac fringilla lacus consectetur. Integer adipiscing porttitor enim in accumsan. Etiam ut felis enim. Praesent dictum nulla id sapien tincidunt id sagittis neque volutpat. Phasellus vestibulum tellus non mauris placerat egestas a quis elit. Curabitur ultricies egestas ornare. Phasellus euismod rhoncus diam vel lobortis. Nulla placerat nulla sed ligula congue tristique. Cras tempus sagittis ligula non mollis. Integer massa nulla, accumsan sed imperdiet vel, bibendum nec nulla. In tincidunt consequat sodales.
<br><br>
Vivamus non tristique ipsum. Pellentesque lacus mi, imperdiet nec sollicitudin vitae, pellentesque non leo. Fusce nisl lectus, faucibus ac vulputate sit amet, commodo non libero. In feugiat dictum nisi eu placerat. Aliquam vel odio sapien, nec varius magna. Maecenas quis risus tortor, in semper elit. Phasellus sit amet quam arcu, non ornare diam. Vivamus non neque ut nibh rhoncus accumsan. Morbi eros dui, venenatis non tristique sed, porta non sem. Nunc ut ipsum id augue lobortis faucibus.
<br><br>
Pellentesque gravida velit vitae arcu ornare iaculis. Quisque mattis nisl vel libero hendrerit tincidunt. Nulla cursus interdum interdum. Praesent augue purus, molestie a lacinia tristique, hendrerit nec velit. Sed nec sodales libero. Donec sed eros tortor, sed tempor mi. Morbi malesuada dolor massa, vel egestas nunc. Fusce vulputate leo sed felis cursus consequat. Phasellus sagittis nisl id arcu cursus sed placerat lacus hendrerit. Praesent feugiat mattis est ac dapibus.', 1000, 1, CAST(0x0000A11500336BAC AS DateTime))
INSERT [dbo].[product] ([id], [name], [description], [price], [status], [created]) VALUES (3, N'Observation Elevator BEX01', N'Sed ut massa in risus lacinia tempor at sit amet quam. Donec vehicula viverra elit, id volutpat leo vulputate fringilla. Vivamus nec tellus lorem, vitae faucibus orci. Proin ultricies, mi sed iaculis ultricies, urna massa blandit erat, quis euismod nunc nunc a justo. Vestibulum eget vehicula metus. Nulla condimentum adipiscing ligula, in euismod purus facilisis quis. Nulla dictum cursus consectetur. Proin vitae imperdiet nibh.
<br><br>
Sed pretium leo nec leo feugiat eget fermentum justo porttitor. Suspendisse semper purus id mauris faucibus dictum. Pellentesque nibh nunc, fringilla vel congue in, mollis et elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus vitae semper velit. Mauris augue lorem, mollis nec euismod at, lacinia quis tellus. Ut sagittis leo sit amet velit imperdiet vitae cursus nisi tempor.
<br><br>
Duis ac quam nisl. Nulla convallis varius felis non auctor. Cras gravida varius ipsum, a ultrices quam euismod vitae. Donec lacus ligula, dignissim sit amet tincidunt ultrices, pulvinar et neque. Nam eu mi eget diam tristique mollis. Morbi magna nibh, euismod nec ornare vitae, tempus in arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris arcu nulla, placerat sed faucibus quis, eleifend hendrerit risus.', 900, 1, CAST(0x0000A11500339E10 AS DateTime))
INSERT [dbo].[product] ([id], [name], [description], [price], [status], [created]) VALUES (4, N'Awesome Elevator', N'Sed vulputate congue condimentum. Praesent consequat vulputate auctor. Suspendisse at ante a orci elementum tincidunt. Suspendisse fringilla mi lorem. Ut blandit erat vitae felis lobortis dignissim. In sed iaculis leo. Vivamus fringilla purus a eros varius feugiat. Donec tincidunt mauris id orci tristique vitae tempor diam eleifend. Morbi cursus augue a risus placerat eget mollis orci luctus. Vestibulum eget nisl non augue elementum mollis. In hac habitasse platea dictumst. Donec eleifend porttitor metus, vitae commodo turpis bibendum non. Sed fringilla, nunc ut dapibus aliquam, odio magna suscipit velit, ac faucibus enim erat vitae enim. Praesent euismod interdum lacus et scelerisque.
<br><br>
Donec dignissim imperdiet felis at sollicitudin. Vivamus non massa ipsum. Nulla in purus non enim tincidunt venenatis eget at neque. Nam eget pretium urna. Pellentesque purus mauris, accumsan nec interdum sed, semper at velit. Curabitur quis nisi in ligula aliquam scelerisque at nec arcu. Nam pulvinar dapibus justo, ut fermentum tellus pellentesque et. Vivamus interdum aliquam molestie. In a lectus a tellus aliquam rutrum. Ut et justo in felis ultricies gravida at at sem. Vivamus aliquet varius turpis, sit amet fringilla nibh fringilla quis. Donec ut pulvinar odio.
<br><br>
Morbi nec enim dui. Sed at accumsan mi. Quisque at neque ac erat porta suscipit sit amet non massa. In hac habitasse platea dictumst. Donec dapibus iaculis enim, ut ullamcorper enim venenatis et. Nulla adipiscing arcu at nibh elementum posuere. Vivamus consequat, metus et dictum aliquet, purus orci tristique quam, quis semper odio tellus elementum ligula. Vivamus metus est, dignissim ac bibendum id, hendrerit sodales quam. Integer accumsan condimentum ligula eget malesuada. Duis lobortis aliquet molestie. Curabitur sapien ligula, ultrices vel pulvinar id, gravida ut quam. Duis velit sem, cursus quis fermentum et, imperdiet non nisi. Curabitur ac tellus enim, sit amet vestibulum diam.', 1200, 1, CAST(0x0000A1150033D074 AS DateTime))
INSERT [dbo].[product] ([id], [name], [description], [price], [status], [created]) VALUES (5, N'Elevator 007', N'Etiam risus augue, posuere aliquet accumsan ut, tristique eu libero. Vivamus varius magna quis metus mattis nec dictum nibh fermentum. Integer pulvinar, sem ut rhoncus interdum, nisl mauris semper ligula, varius aliquam felis nulla a neque. Nullam porta ipsum eleifend odio lobortis molestie. Donec interdum arcu vitae diam interdum vehicula. Morbi lobortis arcu at quam dapibus et commodo nisl suscipit. Nullam eu nibh metus, at iaculis turpis. Cras eget nisl at metus suscipit luctus sit amet eget magna. Sed pellentesque erat sollicitudin mi ullamcorper ut mollis turpis pharetra. Curabitur non libero nibh. Quisque id dapibus dolor. In hac habitasse platea dictumst. Suspendisse feugiat ligula sit amet eros hendrerit eget gravida tortor dictum.
<br><br>
Morbi faucibus magna quis elit imperdiet ullamcorper. Donec eleifend nisl a risus euismod porttitor. Nullam ullamcorper justo eu nisl consequat dignissim. Donec ipsum leo, mollis nec vehicula eu, rutrum quis nibh. Curabitur et erat massa. Curabitur venenatis ornare mauris, in tincidunt metus dignissim sit amet. Proin vestibulum rhoncus euismod. Aenean at dui hendrerit erat accumsan blandit. Nulla ut nulla quis purus accumsan suscipit luctus ac tellus. Ut vitae ullamcorper libero. Integer quis nisi ac augue aliquet dapibus sed quis sem.
<br><br>
In ut mollis lorem. Vivamus posuere egestas enim ac pulvinar. Mauris hendrerit lacus in libero mollis venenatis. Etiam porta odio a arcu volutpat consectetur sed eget sapien. Praesent faucibus tincidunt erat nec elementum. Phasellus id faucibus nulla. Mauris sapien est, eleifend quis viverra eget, eleifend ut nunc. Nunc feugiat nunc at tortor convallis consectetur. Cras eu pretium nunc. Sed auctor interdum dolor ut imperdiet.', 600, 1, CAST(0x0000A1150033FCFC AS DateTime))
INSERT [dbo].[product] ([id], [name], [description], [price], [status], [created]) VALUES (6, N'Passenger Elevator XNK 008', N'Quisque aliquam semper ligula, at condimentum arcu interdum cursus. Quisque iaculis ante vitae risus tempus placerat ac at est. Donec sit amet iaculis nibh. Sed eleifend pellentesque tristique. Aliquam erat volutpat. Quisque accumsan auctor quam, et sagittis nisl ultrices eget. Phasellus dapibus condimentum massa at luctus. Donec sed metus non risus interdum pulvinar. Morbi facilisis, dolor eu bibendum rhoncus, lacus ipsum lacinia justo, non pharetra augue elit ut dolor. Nullam condimentum ornare tempor. Sed nibh sem, tincidunt nec euismod vel, suscipit eget risus. Mauris et condimentum urna. Duis in mollis erat. Donec laoreet fermentum diam eu eleifend. In ac malesuada elit.
<br><br>
Vestibulum adipiscing adipiscing elementum. Morbi ornare nisl non leo venenatis mollis. Etiam sed sem in nisi venenatis viverra eu quis sapien. Nunc at tincidunt lectus. Integer eu nulla nisl. Fusce et ante non odio faucibus fermentum. Vestibulum sed velit elit, vel vehicula elit. Nullam malesuada justo sed mi suscipit iaculis. Aenean rhoncus suscipit ante non dapibus. Donec suscipit ante nec nisi mattis porttitor. Curabitur bibendum adipiscing adipiscing. Nunc tempus eros ultrices mauris fermentum in ultricies dui pharetra. Cras ornare volutpat leo a vestibulum.
<br><br>
Curabitur tempor sollicitudin tortor in iaculis. Nulla pulvinar augue sit amet augue varius lacinia. Duis varius dui ut felis ultricies porttitor. Integer urna mauris, feugiat vel iaculis in, aliquet accumsan erat. Ut in sagittis nisl. Quisque ut lectus vitae neque molestie egestas vel in nisi. Maecenas pulvinar eleifend tempor. Donec eu dolor felis. Quisque venenatis sem in leo aliquam sollicitudin. Aenean scelerisque, sapien lobortis sollicitudin bibendum, magna arcu porttitor risus, eu vulputate orci magna sed magna. In molestie velit vel quam semper dapibus ut sed purus. In aliquet fermentum condimentum. Cras eleifend condimentum elit, facilisis ullamcorper odio dignissim eu.', 1100, 1, CAST(0x0000A11500342600 AS DateTime))
INSERT [dbo].[product] ([id], [name], [description], [price], [status], [created]) VALUES (7, N'Machine Room Less Elevator', N'Vestibulum dui dui, scelerisque at ornare eu, lacinia vel nulla. Aliquam ut lorem nunc, non venenatis sem. In bibendum ipsum ut libero interdum vitae tincidunt ligula hendrerit. Nulla mollis bibendum pulvinar. Nullam magna nulla, tempus posuere adipiscing sit amet, suscipit a ipsum. Praesent molestie libero a lorem cursus sit amet suscipit ante tincidunt. Nam et eros vitae risus gravida vulputate ut id tellus. Aliquam imperdiet tincidunt mi, in malesuada risus viverra nec. Vestibulum in metus nec leo laoreet viverra. Pellentesque vel libero lacus, nec auctor sem. Donec tincidunt nibh in felis pellentesque vel pretium mi pharetra. Donec sollicitudin blandit ultrices. Quisque nec nibh tortor, non iaculis orci.
<br><br>
Suspendisse potenti. In posuere venenatis magna, quis venenatis turpis consequat laoreet. Mauris tempus ligula sed diam porttitor at tristique libero luctus. Nulla at sem nisl. In vestibulum laoreet ante eget elementum. Curabitur felis justo, elementum id tempor ac, pellentesque non leo. Cras in mollis turpis. Pellentesque ac enim neque, at ultricies augue.
<br><br>
Vivamus mattis dolor id felis dignissim et condimentum enim porta. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam erat volutpat. Etiam non enim vel enim lacinia rutrum. Nullam nec arcu dolor. Proin volutpat luctus mollis. Sed commodo interdum tellus ultricies congue. Nullam eleifend hendrerit quam, vel adipiscing turpis semper a.', 1400, 1, CAST(0x0000A11500345BE8 AS DateTime))
INSERT [dbo].[product] ([id], [name], [description], [price], [status], [created]) VALUES (8, N'Elevator Inside', N'Etiam pharetra leo in orci vestibulum eget aliquet magna euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce quis nulla velit. Etiam et sem et erat cursus vestibulum sed non lacus. Fusce dignissim, odio eu convallis iaculis, tortor orci placerat nulla, ut porta mi justo a sem. Mauris at mauris dui, sodales vulputate dui. Nunc pellentesque nisi non ante gravida et hendrerit enim rhoncus. Pellentesque sit amet tellus purus, vel mattis diam. Vestibulum elementum neque nec diam pretium scelerisque. Nulla commodo tristique elit eget facilisis. Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
<br><br>
Quisque vel eros libero, eget vulputate nisl. Etiam auctor, justo sit amet consectetur suscipit, arcu turpis tincidunt diam, nec vulputate metus ipsum at felis. Sed dignissim neque id nibh posuere molestie sed a urna. Phasellus odio velit, congue sed feugiat non, egestas sodales dolor. In hac habitasse platea dictumst. Integer luctus, sapien ut laoreet suscipit, velit velit mattis eros, et viverra ligula urna eget ligula. Praesent non nunc mi, eget faucibus urna. Sed aliquet semper quam, nec sodales magna semper in. Aenean neque urna, suscipit sed pellentesque vitae, dignissim ac eros. Nulla consectetur laoreet lectus, vel placerat odio lacinia et. Sed non urna vel turpis dignissim pharetra. Cras pretium, tortor varius viverra accumsan, neque orci luctus erat, et blandit diam ipsum non risus.
<br><br>
Quisque fringilla ullamcorper tristique. Sed eu tincidunt quam. Morbi consectetur aliquet gravida. Vestibulum posuere, nisl sit amet semper ornare, elit magna congue erat, et iaculis arcu enim id purus. Ut semper imperdiet tempus. Cras ac convallis ante. Sed dictum, purus ut sagittis dignissim, ipsum mi rhoncus purus, sed convallis tortor dui at metus. Sed dolor augue, vehicula id sagittis ut, cursus vel ante. Aliquam porttitor justo eu massa consequat id scelerisque odio malesuada. Aenean ut eros nunc, eget auctor nisl. Curabitur elementum accumsan bibendum. In urna massa, laoreet ac scelerisque ac, auctor vitae nisi. Phasellus molestie leo et nulla accumsan condimentum. Fusce venenatis rhoncus ipsum, eleifend iaculis lectus blandit sit amet. Nunc in enim nunc, non eleifend augue.', 800, 1, CAST(0x0000A1150034899C AS DateTime))
INSERT [dbo].[product] ([id], [name], [description], [price], [status], [created]) VALUES (9, N'Holy Stair', N'Vestibulum bibendum, nibh vel tristique ornare, quam augue accumsan risus, quis auctor dolor nibh eu massa. Maecenas quis elit turpis, vitae mattis quam. Sed vitae odio nisi. Fusce laoreet euismod sem a faucibus. Aliquam erat volutpat. Duis aliquet neque eget lorem porta consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent neque ipsum, semper aliquam lacinia nec, rutrum eu nisi. Sed dignissim, libero quis aliquet ornare, orci lorem tempor lacus, eget volutpat arcu enim vel felis. Curabitur massa metus, placerat at pulvinar non, viverra at nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
<br><br>
Suspendisse feugiat pellentesque lacus vel gravida. Cras leo nisi, lobortis non rutrum sit amet, lobortis lacinia diam. Pellentesque cursus mi eu odio bibendum non hendrerit augue bibendum. Aliquam in metus mauris, sed iaculis velit. Ut id est vitae quam aliquam volutpat eu eu lorem. Suspendisse ultrices commodo lectus, et fermentum ligula aliquet a. Ut et fringilla justo. Etiam feugiat tempus nisi, quis vestibulum nunc imperdiet a. Nunc nunc dolor, vehicula at accumsan sit amet, faucibus sodales justo.
<br><br>
Nullam sit amet enim lacus. Suspendisse ultrices imperdiet purus sed fringilla. Maecenas placerat elementum nunc eu ornare. Nunc nec velit orci, vel pellentesque ante. Pellentesque pellentesque luctus tellus. Etiam posuere tincidunt libero vel fermentum. Vivamus neque nibh, vehicula sed facilisis in, tincidunt eu mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris bibendum turpis at nulla facilisis ut accumsan nulla sollicitudin. Ut in tortor nec urna euismod congue tristique non nulla. Nam elit ante, elementum in fermentum sed, tempor eget libero. Suspendisse vitae tellus sem, ut accumsan turpis. Suspendisse mauris turpis, consequat at malesuada vel, suscipit eu risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sollicitudin tempus semper. In vitae urna nunc, vel suscipit nulla.', 2000, 1, CAST(0x0000A1150034D370 AS DateTime))
SET IDENTITY_INSERT [dbo].[product] OFF
/****** Object:  Table [dbo].[payment]    Script Date: 11/26/2012 18:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[payment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[payment](
	[id] [int] IDENTITY(4,1) NOT NULL,
	[name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_payment_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'payment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'elevation.payment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'payment'
GO
SET IDENTITY_INSERT [dbo].[payment] ON
INSERT [dbo].[payment] ([id], [name], [status]) VALUES (1, N'Cash on Delivery', 1)
INSERT [dbo].[payment] ([id], [name], [status]) VALUES (2, N'Paypal', 1)
INSERT [dbo].[payment] ([id], [name], [status]) VALUES (3, N'Bank Transfer', 1)
SET IDENTITY_INSERT [dbo].[payment] OFF
/****** Object:  Table [dbo].[user]    Script Date: 11/26/2012 18:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(3,1) NOT NULL,
	[username] [nvarchar](63) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[email] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[password] [nvarchar](32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[address] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[city] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_id] [int] NULL,
	[phone] [nvarchar](63) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[company] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type] [int] NOT NULL,
	[status] [int] NOT NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_user_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [user$email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [user$username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND name = N'country_id')
CREATE NONCLUSTERED INDEX [country_id] ON [dbo].[user] 
(
	[country_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'user', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'elevation.`user`' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user'
GO
SET IDENTITY_INSERT [dbo].[user] ON
INSERT [dbo].[user] ([id], [username], [email], [password], [name], [address], [city], [country_id], [phone], [company], [type], [status], [created]) VALUES (1, N'longpro', N'a@bc.com', N'202cb962ac59075b964b07152d234b70', N'Long', N'asd 1234', N'HN', 1, N'+10123456789', N'', 1, 1, CAST(0x0000A114000E97F0 AS DateTime))
INSERT [dbo].[user] ([id], [username], [email], [password], [name], [address], [city], [country_id], [phone], [company], [type], [status], [created]) VALUES (2, N'admin', N'longprao@gmail.com', N'202cb962ac59075b964b07152d234b70', N'Long', N'', N'', NULL, N'', N'', 1, 1, CAST(0x0000A11201886070 AS DateTime))
SET IDENTITY_INSERT [dbo].[user] OFF
/****** Object:  Table [dbo].[order]    Script Date: 11/26/2012 18:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(2,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[payment_id] [int] NOT NULL,
	[name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[city] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_id] [int] NULL,
	[phone] [nvarchar](63) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [int] NOT NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_order_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order]') AND name = N'country_id')
CREATE NONCLUSTERED INDEX [country_id] ON [dbo].[order] 
(
	[country_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order]') AND name = N'payment_id')
CREATE NONCLUSTERED INDEX [payment_id] ON [dbo].[order] 
(
	[payment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order]') AND name = N'user_id')
CREATE NONCLUSTERED INDEX [user_id] ON [dbo].[order] 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'order', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'elevation.`order`' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'order'
GO
SET IDENTITY_INSERT [dbo].[order] ON
INSERT [dbo].[order] ([id], [user_id], [payment_id], [name], [address], [city], [country_id], [phone], [status], [created]) VALUES (1, 1, 2, N'The Missing Corner', N'Cat Linh', N'HN', 1, N'0123456789', 0, CAST(0x0000A115003602F4 AS DateTime))
SET IDENTITY_INSERT [dbo].[order] OFF
/****** Object:  Table [dbo].[order_product]    Script Date: 11/26/2012 18:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[order_product](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [real] NOT NULL,
 CONSTRAINT [PK_order_product_order_id] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order_product]') AND name = N'order_id')
CREATE NONCLUSTERED INDEX [order_id] ON [dbo].[order_product] 
(
	[order_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order_product]') AND name = N'product_id')
CREATE NONCLUSTERED INDEX [product_id] ON [dbo].[order_product] 
(
	[product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'order_product', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'elevation.order_product' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'order_product'
GO
INSERT [dbo].[order_product] ([order_id], [product_id], [quantity], [price]) VALUES (1, 4, 1, 1200)
INSERT [dbo].[order_product] ([order_id], [product_id], [quantity], [price]) VALUES (1, 6, 3, 1100)
INSERT [dbo].[order_product] ([order_id], [product_id], [quantity], [price]) VALUES (1, 9, 1, 2000)
/****** Object:  Table [dbo].[complaint]    Script Date: 11/26/2012 18:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[complaint]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[complaint](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[description] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_complaint_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[complaint]') AND name = N'order_id')
CREATE NONCLUSTERED INDEX [order_id] ON [dbo].[complaint] 
(
	[order_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[complaint]') AND name = N'user_id')
CREATE NONCLUSTERED INDEX [user_id] ON [dbo].[complaint] 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'complaint', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'elevation.complaint' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'complaint'
GO
/****** Object:  Default [DF__complaint__creat__7E6CC920]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__complaint__creat__7E6CC920]') AND parent_object_id = OBJECT_ID(N'[dbo].[complaint]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__complaint__creat__7E6CC920]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[complaint] ADD  CONSTRAINT [DF__complaint__creat__7E6CC920]  DEFAULT (getdate()) FOR [created]
END


End
GO
/****** Object:  Default [DF__country__iso2__00551192]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__country__iso2__00551192]') AND parent_object_id = OBJECT_ID(N'[dbo].[country]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__country__iso2__00551192]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[country] ADD  CONSTRAINT [DF__country__iso2__00551192]  DEFAULT (NULL) FOR [iso2]
END


End
GO
/****** Object:  Default [DF__country__iso3__014935CB]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__country__iso3__014935CB]') AND parent_object_id = OBJECT_ID(N'[dbo].[country]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__country__iso3__014935CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[country] ADD  CONSTRAINT [DF__country__iso3__014935CB]  DEFAULT (NULL) FOR [iso3]
END


End
GO
/****** Object:  Default [DF__feedback__rating__03317E3D]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__feedback__rating__03317E3D]') AND parent_object_id = OBJECT_ID(N'[dbo].[feedback]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__feedback__rating__03317E3D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF__feedback__rating__03317E3D]  DEFAULT ((10)) FOR [rating]
END


End
GO
/****** Object:  Default [DF__feedback__create__0425A276]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__feedback__create__0425A276]') AND parent_object_id = OBJECT_ID(N'[dbo].[feedback]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__feedback__create__0425A276]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF__feedback__create__0425A276]  DEFAULT (getdate()) FOR [created]
END


End
GO
/****** Object:  Default [DF__order__name__060DEAE8]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__name__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__name__060DEAE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF__order__name__060DEAE8]  DEFAULT (NULL) FOR [name]
END


End
GO
/****** Object:  Default [DF__order__address__07020F21]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__address__07020F21]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__address__07020F21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF__order__address__07020F21]  DEFAULT (NULL) FOR [address]
END


End
GO
/****** Object:  Default [DF__order__city__07F6335A]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__city__07F6335A]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__city__07F6335A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF__order__city__07F6335A]  DEFAULT (NULL) FOR [city]
END


End
GO
/****** Object:  Default [DF__order__country_i__08EA5793]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__country_i__08EA5793]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__country_i__08EA5793]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF__order__country_i__08EA5793]  DEFAULT (NULL) FOR [country_id]
END


End
GO
/****** Object:  Default [DF__order__phone__09DE7BCC]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__phone__09DE7BCC]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__phone__09DE7BCC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF__order__phone__09DE7BCC]  DEFAULT (NULL) FOR [phone]
END


End
GO
/****** Object:  Default [DF__order__status__0AD2A005]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__status__0AD2A005]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__status__0AD2A005]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF__order__status__0AD2A005]  DEFAULT ((0)) FOR [status]
END


End
GO
/****** Object:  Default [DF__order__created__0BC6C43E]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__order__created__0BC6C43E]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__order__created__0BC6C43E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF__order__created__0BC6C43E]  DEFAULT (getdate()) FOR [created]
END


End
GO
/****** Object:  Default [DF__payment__status__0EA330E9]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__payment__status__0EA330E9]') AND parent_object_id = OBJECT_ID(N'[dbo].[payment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__payment__status__0EA330E9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[payment] ADD  CONSTRAINT [DF__payment__status__0EA330E9]  DEFAULT ((1)) FOR [status]
END


End
GO
/****** Object:  Default [DF__product__price__108B795B]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__product__price__108B795B]') AND parent_object_id = OBJECT_ID(N'[dbo].[product]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__product__price__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF__product__price__108B795B]  DEFAULT (NULL) FOR [price]
END


End
GO
/****** Object:  Default [DF__product__status__117F9D94]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__product__status__117F9D94]') AND parent_object_id = OBJECT_ID(N'[dbo].[product]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__product__status__117F9D94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF__product__status__117F9D94]  DEFAULT ((1)) FOR [status]
END


End
GO
/****** Object:  Default [DF__product__created__1273C1CD]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__product__created__1273C1CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[product]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__product__created__1273C1CD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF__product__created__1273C1CD]  DEFAULT (getdate()) FOR [created]
END


End
GO
/****** Object:  Default [DF__project__status__145C0A3F]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__project__status__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[project]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__project__status__145C0A3F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[project] ADD  CONSTRAINT [DF__project__status__145C0A3F]  DEFAULT ((1)) FOR [status]
END


End
GO
/****** Object:  Default [DF__project__created__15502E78]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__project__created__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[project]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__project__created__15502E78]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[project] ADD  CONSTRAINT [DF__project__created__15502E78]  DEFAULT (getdate()) FOR [created]
END


End
GO
/****** Object:  Default [DF__user__address__173876EA]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__address__173876EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__address__173876EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__address__173876EA]  DEFAULT (NULL) FOR [address]
END


End
GO
/****** Object:  Default [DF__user__city__182C9B23]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__city__182C9B23]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__city__182C9B23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__city__182C9B23]  DEFAULT (NULL) FOR [city]
END


End
GO
/****** Object:  Default [DF__user__country_id__1920BF5C]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__country_id__1920BF5C]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__country_id__1920BF5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__country_id__1920BF5C]  DEFAULT (NULL) FOR [country_id]
END


End
GO
/****** Object:  Default [DF__user__phone__1A14E395]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__phone__1A14E395]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__phone__1A14E395]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__phone__1A14E395]  DEFAULT (NULL) FOR [phone]
END


End
GO
/****** Object:  Default [DF__user__company__1B0907CE]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__company__1B0907CE]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__company__1B0907CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__company__1B0907CE]  DEFAULT (NULL) FOR [company]
END


End
GO
/****** Object:  Default [DF__user__type__1BFD2C07]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__type__1BFD2C07]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__type__1BFD2C07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__type__1BFD2C07]  DEFAULT ((0)) FOR [type]
END


End
GO
/****** Object:  Default [DF__user__status__1CF15040]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__status__1CF15040]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__status__1CF15040]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__status__1CF15040]  DEFAULT ((1)) FOR [status]
END


End
GO
/****** Object:  Default [DF__user__created__1DE57479]    Script Date: 11/26/2012 18:08:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__user__created__1DE57479]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__user__created__1DE57479]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF__user__created__1DE57479]  DEFAULT (getdate()) FOR [created]
END


End
GO
/****** Object:  ForeignKey [complaint$complaint_ibfk_1]    Script Date: 11/26/2012 18:08:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[complaint$complaint_ibfk_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[complaint]'))
ALTER TABLE [dbo].[complaint]  WITH NOCHECK ADD  CONSTRAINT [complaint$complaint_ibfk_1] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[complaint$complaint_ibfk_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[complaint]'))
ALTER TABLE [dbo].[complaint] CHECK CONSTRAINT [complaint$complaint_ibfk_1]
GO
/****** Object:  ForeignKey [complaint$complaint_ibfk_2]    Script Date: 11/26/2012 18:08:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[complaint$complaint_ibfk_2]') AND parent_object_id = OBJECT_ID(N'[dbo].[complaint]'))
ALTER TABLE [dbo].[complaint]  WITH NOCHECK ADD  CONSTRAINT [complaint$complaint_ibfk_2] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[complaint$complaint_ibfk_2]') AND parent_object_id = OBJECT_ID(N'[dbo].[complaint]'))
ALTER TABLE [dbo].[complaint] CHECK CONSTRAINT [complaint$complaint_ibfk_2]
GO
/****** Object:  ForeignKey [order$order_ibfk_1]    Script Date: 11/26/2012 18:08:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order$order_ibfk_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
ALTER TABLE [dbo].[order]  WITH NOCHECK ADD  CONSTRAINT [order$order_ibfk_1] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order$order_ibfk_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [order$order_ibfk_1]
GO
/****** Object:  ForeignKey [order$order_ibfk_2]    Script Date: 11/26/2012 18:08:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order$order_ibfk_2]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
ALTER TABLE [dbo].[order]  WITH NOCHECK ADD  CONSTRAINT [order$order_ibfk_2] FOREIGN KEY([payment_id])
REFERENCES [dbo].[payment] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order$order_ibfk_2]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [order$order_ibfk_2]
GO
/****** Object:  ForeignKey [order$order_ibfk_3]    Script Date: 11/26/2012 18:08:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order$order_ibfk_3]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
ALTER TABLE [dbo].[order]  WITH NOCHECK ADD  CONSTRAINT [order$order_ibfk_3] FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order$order_ibfk_3]') AND parent_object_id = OBJECT_ID(N'[dbo].[order]'))
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [order$order_ibfk_3]
GO
/****** Object:  ForeignKey [order_product$order_product_ibfk_1]    Script Date: 11/26/2012 18:08:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order_product$order_product_ibfk_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[order_product]'))
ALTER TABLE [dbo].[order_product]  WITH NOCHECK ADD  CONSTRAINT [order_product$order_product_ibfk_1] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order_product$order_product_ibfk_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[order_product]'))
ALTER TABLE [dbo].[order_product] CHECK CONSTRAINT [order_product$order_product_ibfk_1]
GO
/****** Object:  ForeignKey [order_product$order_product_ibfk_2]    Script Date: 11/26/2012 18:08:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order_product$order_product_ibfk_2]') AND parent_object_id = OBJECT_ID(N'[dbo].[order_product]'))
ALTER TABLE [dbo].[order_product]  WITH NOCHECK ADD  CONSTRAINT [order_product$order_product_ibfk_2] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[order_product$order_product_ibfk_2]') AND parent_object_id = OBJECT_ID(N'[dbo].[order_product]'))
ALTER TABLE [dbo].[order_product] CHECK CONSTRAINT [order_product$order_product_ibfk_2]
GO
/****** Object:  ForeignKey [user$user_ibfk_1]    Script Date: 11/26/2012 18:08:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[user$user_ibfk_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
ALTER TABLE [dbo].[user]  WITH NOCHECK ADD  CONSTRAINT [user$user_ibfk_1] FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[user$user_ibfk_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [user$user_ibfk_1]
GO
