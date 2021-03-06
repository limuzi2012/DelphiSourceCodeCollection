if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Branch]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Branch]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CDrug]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CDrug]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CMoney]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CMoney]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CRKind]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CRKind]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CRegister]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CRegister]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CUnit]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CUnit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Company]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Company]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Count]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Count]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Duty]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Duty]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HLeave]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HLeave]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HMoney]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HMoney]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HPrepay]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HPrepay]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HRegister]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HRegister]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ICure]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ICure]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[KDrug]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[KDrug]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[On_Off_Work]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[On_Off_Work]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PInput]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PInput]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PInputB]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PInputB]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PKucun]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PKucun]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[POutput]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[POutput]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[POutputB]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[POutputB]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Person]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Person]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TCMoney]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TCMoney]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[THMoney]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[THMoney]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Users]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Users]
GO

CREATE TABLE [dbo].[Branch] (
	[Bra_No] [int] IDENTITY (105, 1) NOT NULL ,
	[Bra_Name] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CDrug] (
	[CDrug_No] [int] NOT NULL ,
	[CDrug_Name] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[CDrug_Unit] [nchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[CDrug_Money] [money] NOT NULL ,
	[CDrug_Kind] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CMoney] (
	[CM_ID] [int] NOT NULL ,
	[CM_Name] [nchar] (40) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[CM_Num] [int] NOT NULL ,
	[CM_Price] [money] NOT NULL ,
	[CM_Tatol] [money] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CRKind] (
	[CRK_Name] [nchar] (100) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[CRK_Money] [money] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CRegister] (
	[CReg_ID] [int] NOT NULL ,
	[CReg_Name] [nchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[CReg_Date] [datetime] NOT NULL ,
	[CReg_Money] [money] NOT NULL ,
	[CReg_Bra] [nchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[CReg_Kind] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CUnit] (
	[CUnit_No] [int] NOT NULL ,
	[CUnit_Name] [nchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Company] (
	[Company_No] [int] NOT NULL ,
	[Company_Name] [nchar] (40) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Count] (
	[Count_Name] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Count_Value] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Duty] (
	[Duty_No] [int] NOT NULL ,
	[Duty_Name] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HLeave] (
	[HL_ID] [int] NOT NULL ,
	[HL_LDate] [datetime] NOT NULL ,
	[HL_TMoney] [money] NOT NULL ,
	[HL_BMoney] [money] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HMoney] (
	[HM_ID] [int] NOT NULL ,
	[HM_Name] [nchar] (40) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[HM_Num] [int] NOT NULL ,
	[HM_Price] [money] NOT NULL ,
	[HM_Tatol] [money] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HPrepay] (
	[HPre_ID] [int] NOT NULL ,
	[HPre_Money] [money] NOT NULL ,
	[HPre_MType] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[HPre_Number] [int] NOT NULL ,
	[HPre_Date] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HRegister] (
	[HReg_ID] [int] NOT NULL ,
	[HReg_Date] [datetime] NOT NULL ,
	[HReg_Name] [nchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[HReg_Age] [int] NOT NULL ,
	[HReg_Sex] [bit] NOT NULL ,
	[HReg_Address] [nchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[HReg_Work] [nchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[HReg_Tel] [nchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[HReg_IDC] [int] NOT NULL ,
	[HReg_Doc] [int] NOT NULL ,
	[HReg_Disc] [nchar] (100) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ICure] (
	[ICure_No] [int] NOT NULL ,
	[ICure_Name] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[KDrug] (
	[KDrug_No] [int] NOT NULL ,
	[KDrug_Name] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[On_Off_Work] (
	[Work_Flag] [bit] NULL ,
	[Work_Value] [nchar] (6) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PInput] (
	[PIN_ID] [int] NOT NULL ,
	[PIN_PID] [int] NOT NULL ,
	[PIN_Name] [int] NOT NULL ,
	[PIN_Kind] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[PIN_Unit] [nchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[PIN_Company] [int] NULL ,
	[PIN_UPrice] [money] NOT NULL ,
	[PIN_Number] [int] NOT NULL ,
	[PIN_TPrice] [money] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PInputB] (
	[PINB_PID] [int] NOT NULL ,
	[PINB_Operator] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[PINB_Date] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PKucun] (
	[PK_No] [int] NOT NULL ,
	[PK_INumber] [int] NULL ,
	[PK_ONumber] [int] NULL ,
	[PK_TNumber] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[POutput] (
	[POut_ID] [int] NOT NULL ,
	[POut_PID] [int] NOT NULL ,
	[POut_Name] [int] NOT NULL ,
	[POut_Kind] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[POut_Unit] [nchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[POut_UPrice] [money] NOT NULL ,
	[POut_Number] [int] NOT NULL ,
	[POut_TPrice] [money] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[POutputB] (
	[POUTB_ID] [int] NOT NULL ,
	[POUTB_Operator] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[POUTB_Date] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Person] (
	[Per_ID] [int] NOT NULL ,
	[Per_Name] [nchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Per_Bra] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Per_Duty] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Per_Tel] [nchar] (18) COLLATE Chinese_PRC_CI_AS NULL ,
	[Work_Mon] [bit] NULL ,
	[Work_Tue] [bit] NULL ,
	[Work_Wen] [bit] NULL ,
	[Work_Thu] [bit] NULL ,
	[Work_Fri] [bit] NULL ,
	[Work_Sat] [bit] NULL ,
	[Work_Sun] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TCMoney] (
	[TCM_ID] [int] NOT NULL ,
	[TCM_RID] [int] NOT NULL ,
	[TCM_Name] [nchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[TCM_Date] [datetime] NOT NULL ,
	[THM_Doctor] [nchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[TCM_WMDrug] [money] NULL ,
	[TCM_CMDrug] [money] NULL ,
	[TCM_HMDrug] [money] NULL ,
	[TCM_MExam] [money] NULL ,
	[TCM_MInject] [money] NULL ,
	[TCM_MEmit] [money] NULL ,
	[TCM_MDiag] [money] NULL ,
	[TCM_MChem] [money] NULL ,
	[TCM_MCure] [money] NULL ,
	[TCM_MSurgery] [money] NULL ,
	[TCM_MBlood] [money] NULL ,
	[TCM_MOxygen] [money] NULL ,
	[TCM_MOther] [money] NULL ,
	[TCM_Total] [money] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[THMoney] (
	[THM_ID] [int] NOT NULL ,
	[THM_HID] [int] NULL ,
	[THM_Name] [nchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[THM_Date] [datetime] NOT NULL ,
	[THM_Doctor] [nchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[THM_WMDrug] [money] NULL ,
	[THM_CMDrug] [money] NULL ,
	[THM_HMDrug] [money] NULL ,
	[THM_MExam] [money] NULL ,
	[THM_MInject] [money] NULL ,
	[THM_MEmit] [money] NULL ,
	[THM_MDiag] [money] NULL ,
	[THM_MChem] [money] NULL ,
	[THM_MCure] [money] NULL ,
	[THM_MSurgery] [money] NULL ,
	[THM_MBlood] [money] NULL ,
	[THM_MOxygen] [money] NULL ,
	[THM_MOther] [money] NULL ,
	[THM_Total] [money] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Users] (
	[User_ID] [int] NOT NULL ,
	[User_Name] [nchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[User_Password] [nchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[User_Popedom] [nchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

