if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_药品库存_药品资料]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[药品库存] DROP CONSTRAINT FK_药品库存_药品资料
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_门诊划价明细_门诊划价]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[门诊划价明细] DROP CONSTRAINT FK_门诊划价明细_门诊划价
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_门诊挂号_门诊挂号类型]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[门诊挂号] DROP CONSTRAINT FK_门诊挂号_门诊挂号类型
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[产地]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[产地]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[医生资料]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[医生资料]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[库房资料]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[库房资料]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[病人信息库]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[病人信息库]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[科室资料]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[科室资料]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[职务资料]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[职务资料]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[药品分类]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[药品分类]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[药品库存]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[药品库存]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[药品资料]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[药品资料]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[计量单位]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[计量单位]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[门诊划价]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[门诊划价]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[门诊划价明细]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[门诊划价明细]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[门诊挂号]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[门诊挂号]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[门诊挂号类型]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[门诊挂号类型]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[门诊收费项目]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[门诊收费项目]
GO

CREATE TABLE [dbo].[产地] (
	[编号] [varchar] (100) NULL ,
	[产地名称] [varchar] (100) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[医生资料] (
	[编号] [int] IDENTITY (1, 1) NOT NULL ,
	[姓名] [varchar] (100) NULL ,
	[入职日期] [smalldatetime] NULL ,
	[科室] [varchar] (100) NULL ,
	[备注] [varchar] (300) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[库房资料] (
	[编号] [varchar] (100) NOT NULL ,
	[名称] [varchar] (100) NULL ,
	[位置] [varchar] (300) NULL ,
	[备注] [varchar] (500) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[病人信息库] (
	[编号] [varchar] (15) NOT NULL primary key,
	[姓名] [varchar] (30) NULL ,
	[性别] [varchar] (2) NULL ,
	[年龄] [int]NULL ,
	[民族]  [varchar] (20) NULL ,
	[费用类型] [varchar] (20) NULL ,
	[电话] [varchar] (15) NULL ,
	[拼音码] [varchar] (5) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[科室资料] (
	[编号] [int] IDENTITY (1, 1) NOT NULL ,
	[名称] [varchar] (100) NULL ,
	[备注] [varchar] (500) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[职务资料] (
	[编号] [varchar] (100) NOT NULL ,
	[名称] [varchar] (100) NULL ,
	[备注] [varchar] (500) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[药品分类] (
	[编号] [varchar] (100) NULL ,
	[名称] [varchar] (200) NULL ,
	[备注] [varchar] (500) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[药品库存] (
	[编号] [int] IDENTITY (1, 1) NOT NULL ,
	[库房] [varchar] (200) NULL ,
	[药品编号] [varchar] (20) NOT NULL ,
	[药品数量] [decimal](12, 2) NULL ,
	[备注] [varchar] (500) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[药品资料] (
	[编号] [varchar] (20) NOT NULL ,
	[名称] [varchar] (150) NULL ,
	[规格] [varchar] (100) NULL ,
	[整量单位] [varchar] (50) NULL ,
	[散量单位] [varchar] (50) NULL ,
	[入库单价] [decimal](12, 2) NULL ,
	[出库单价] [decimal](12, 2) NULL ,
	[批发价] [decimal](12, 2) NULL ,
	[整散比] [decimal](12, 2) NULL ,
	[分类] [varchar] (100) NULL ,
	[费用归类] [varchar] (100) NULL ,
	[拼音码] [varchar] (50) NULL ,
	[效期] [int] NULL ,
	[上限] [decimal](12, 2) NULL ,
	[下限] [decimal](12, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[计量单位] (
	[名称] [varchar] (100) NULL ,
	[备注] [varchar] (500) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[门诊划价] (
	[编号] [varchar] (15) NOT NULL ,
	[科室] [varchar] (30) NULL ,
	[挂号编号] [varchar] (15) NULL ,
	[医生] [varchar] (10) NULL ,
	[划价时间] [datetime] NOT NULL ,
	[划价员] [varchar] (10) NULL ,
	[是否收费] [varchar] (2) NULL ,
	[收费员] [varchar] (10) NULL ,
	[收费时间] [datetime] NULL ,
	[划价金额] [money] NOT NULL ,
	[是否发药] [varchar] (2) NULL ,
	[发药时间] [datetime] NULL ,
	[发药员] [varchar] (10) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[门诊划价明细] (
	[编号] [int] IDENTITY (1, 1) NOT NULL ,
	[划价编号] [varchar] (15) NOT NULL ,
	[药品编号] [varchar] (15) NOT NULL ,
	[单价] [decimal](12, 2) NULL ,
	[数量] [decimal](12, 2) NULL ,
	[金额] [decimal](12, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[门诊挂号] (
	[编号] [varchar] (15) NOT NULL ,
	[病人编号] [varchar] (15) NULL ,
	[姓名] [varchar] (30) NULL ,
	[性别] [varchar] (2) NULL ,
	[挂号科室] [varchar] (30) NULL ,
	[费用类型] [varchar] (30) NULL ,
	[挂号类型] [varchar] (30) NULL ,
	[挂号费用] [decimal](12, 2) NULL ,
	[医生] [varchar] (30) NULL ,
	[时间] [datetime] NULL,
	[是否已划价] [varchar] (2) default '否' 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[门诊挂号类型] (
	[编号] [int] IDENTITY (1, 1) NOT NULL ,
	[挂号类型] [varchar] (50) NOT NULL ,
	[挂号费] [decimal](12, 2) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[门诊收费项目] (
	[编号] [varchar] (20) NOT NULL ,
	[名称] [varchar] (100) NULL ,
	[拼音码] [varchar] (100) NULL ,
	[费用] [decimal](12, 2) NULL ,
	[费用分类] [varchar] (100) NULL ,
	[病种分类] [varchar] (100) NULL ,
	[备注] [varchar] (100) NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[医生资料] WITH NOCHECK ADD 
	CONSTRAINT [PK_处方医生] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[库房资料] WITH NOCHECK ADD 
	CONSTRAINT [PK_库房资料] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[科室资料] WITH NOCHECK ADD 
	CONSTRAINT [PK_科室资料] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[职务资料] WITH NOCHECK ADD 
	CONSTRAINT [PK_职务资料] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[药品库存] WITH NOCHECK ADD 
	CONSTRAINT [PK_药品库存] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[药品资料] WITH NOCHECK ADD 
	CONSTRAINT [PK_药品资料] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[门诊划价] WITH NOCHECK ADD 
	CONSTRAINT [PK_门诊划价] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[门诊划价明细] WITH NOCHECK ADD 
	CONSTRAINT [PK_门诊划价明细] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[门诊挂号] WITH NOCHECK ADD 
	CONSTRAINT [PK_门诊挂号] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[门诊挂号类型] WITH NOCHECK ADD 
	CONSTRAINT [PK_门诊挂号类型] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[门诊收费项目] WITH NOCHECK ADD 
	CONSTRAINT [PK_门诊收费项目] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[药品库存] ADD 
	CONSTRAINT [FK_药品库存_药品资料] FOREIGN KEY 
	(
		[药品编号]
	) REFERENCES [dbo].[药品资料] (
		[编号]
	)
GO

ALTER TABLE [dbo].[门诊划价明细] ADD 
	CONSTRAINT [FK_门诊划价明细_门诊划价] FOREIGN KEY 
	(
		[划价编号]
	) REFERENCES [dbo].[门诊划价] (
		[编号]
	)
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[v收费项目及药品]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[v收费项目及药品]
go
create view v收费项目及药品
as
select 编号, 名称, 规格, 整量单位 as 单位, 出库单价 as 单价, 拼音码 from 药品资料 
	union 
select 编号,名称, 费用分类 as 规格, 病种分类 as 单位, 费用 as 单价, 拼音码  from 门诊收费项目
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[sf_药品发出]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sf_药品发出]
GO
create proc sf_药品发出 @id varchar(15)
as
begin tran
	-- 划价收费后药房发货
	update 门诊划价 set 是否发药='是', 发药员='王五', 发药时间=getdate()
		where 编号=@id
	-- 减少库存,演示程序,直接减少'西药房'的库存
	-- 实际应用,应该根据药房减
	update 药品库存 set 药品数量=药品数量-b.数量 from 
		药品库存 as a, 门诊划价明细 as b where a.药品编号=b.药品编号
			and 库房='西药房'  -- 这里应该替换为实际的组别
			and 划价编号=@id 
commit
GO
