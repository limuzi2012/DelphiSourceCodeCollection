if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书丢失_图书编号_fk]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[图书丢失] DROP CONSTRAINT 图书丢失_图书编号_fk
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_图书罚款_图书信息]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[图书罚款] DROP CONSTRAINT FK_图书罚款_图书信息
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书归还_图书编号_fk]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[图书归还] DROP CONSTRAINT 图书归还_图书编号_fk
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书借阅_图书编号_fk]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[图书借阅] DROP CONSTRAINT 图书借阅_图书编号_fk
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_图书征订_图书信息]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[图书征订] DROP CONSTRAINT FK_图书征订_图书信息
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书注销_图书编号_fk]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[图书注销] DROP CONSTRAINT 图书注销_图书编号_fk
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[期刊丢失_期刊编号_fk]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[期刊丢失] DROP CONSTRAINT 期刊丢失_期刊编号_fk
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_期刊罚款_期刊信息]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[期刊罚款] DROP CONSTRAINT FK_期刊罚款_期刊信息
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_期刊罚款_读者信息]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[期刊罚款] DROP CONSTRAINT FK_期刊罚款_读者信息
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_图书罚款_读者信息]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[图书罚款] DROP CONSTRAINT FK_图书罚款_读者信息
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_读者信息_读者类型]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[读者信息] DROP CONSTRAINT FK_读者信息_读者类型
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sf_图书借阅]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sf_图书借阅]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sf_图书归还]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sf_图书归还]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sf_图书征订]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sf_图书征订]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[书架]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[书架]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[供应商]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[供应商]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[出版社]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[出版社]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书丢失]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[图书丢失]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书信息]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[图书信息]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书借阅]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[图书借阅]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书归还]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[图书归还]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书征订]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[图书征订]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书注销]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[图书注销]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书类型]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[图书类型]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书罚款]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[图书罚款]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[图书馆]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[图书馆]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[文献印刷]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[文献印刷]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[文献尺寸]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[文献尺寸]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[文献等级]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[文献等级]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[文献语系]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[文献语系]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[文献附件]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[文献附件]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[期刊丢失]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[期刊丢失]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[期刊信息]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[期刊信息]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[期刊借阅]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[期刊借阅]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[期刊归还]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[期刊归还]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[期刊征订]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[期刊征订]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[期刊注销]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[期刊注销]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[期刊类型]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[期刊类型]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[期刊罚款]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[期刊罚款]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[管理员]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[管理员]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[读者信息]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[读者信息]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[读者类型]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[读者类型]
GO

CREATE TABLE [dbo].[书架] (
	[编号] [varchar] (50) NOT NULL ,
	[书架名称] [varchar] (200) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[供应商] (
	[Code] [varchar] (200) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[出版社] (
	[出版社编号] [int] NOT NULL ,
	[ISBN] [varchar] (40) NULL ,
	[出版社名称] [varchar] (200) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[图书丢失] (
	[丢失编号] [int] NOT NULL ,
	[图书编号] [varchar] (50) NULL ,
	[读者编号] [varchar] (40) NULL ,
	[赔偿金额] [money] NULL ,
	[操作时间] [smalldatetime] NULL ,
	[操作员] [varchar] (20) NULL ,
	[确定丢失] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[图书信息] (
	[条形码] [varchar] (40) NULL ,
	[编号] [varchar] (50) NOT NULL ,
	[书名] [varchar] (200) NULL ,
	[类型] [varchar] (100) NULL ,
	[作者] [varchar] (100) NULL ,
	[译者] [varchar] (100) NULL ,
	[ISBN] [varchar] (40) NULL ,
	[出版社] [varchar] (100) NULL ,
	[价格] [money] NULL ,
	[页码] [int] NULL ,
	[书架名称] [varchar] (200) NULL ,
	[现存量] [int] NULL ,
	[库存总量] [int] NULL ,
	[入库时间] [smalldatetime] NULL ,
	[操作员] [varchar] (20) NULL ,
	[简介] [varchar] (100) NULL ,
	[借出次数] [int] NULL ,
	[是否注销] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[图书借阅] (
	[借阅编号] [int] IDENTITY (1, 1) NOT NULL ,
	[图书编号] [varchar] (50) NULL ,
	[读者编号] [varchar] (40) NULL ,
	[借阅时间] [smalldatetime] NULL ,
	[应还时间] [smalldatetime] NULL ,
	[续借次数] [int] NULL ,
	[操作员] [varchar] (20) NULL ,
	[状态] [varchar] (10) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[图书归还] (
	[归还编号] [int] IDENTITY (1, 1) NOT NULL ,
	[图书编号] [varchar] (50) NULL ,
	[读者编号] [varchar] (40) NULL ,
	[退还押金] [money] NULL ,
	[归还时间] [smalldatetime] NULL ,
	[操作员] [varchar] (20) NULL ,
	[确定归还] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[图书征订] (
	[征订编号] [varchar] (50) NOT NULL ,
	[图书编号] [varchar] (50) NOT NULL ,
	[订购者] [varchar] (100) NULL ,
	[订购者联系方式] [varchar] (100) NULL ,
	[订购数量] [int] NULL ,
	[订购单价] [money] NULL ,
	[订购日期] [smalldatetime] NULL ,
	[是否验收] [bit] NULL ,
	[验收日期] [smalldatetime] NULL ,
	[操作员] [varchar] (20) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[图书注销] (
	[注销编号] [int] NOT NULL ,
	[图书编号] [varchar] (50) NOT NULL ,
	[注销数量] [int] NULL ,
	[注销时间] [smalldatetime] NULL ,
	[操作员] [varchar] (20) NULL ,
	[确定注销] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[图书类型] (
	[类型编号] [varchar] (50) NOT NULL ,
	[类型名称] [varchar] (100) NULL ,
	[可借天数] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[图书罚款] (
	[罚款编号] [int] IDENTITY (1, 1) NOT NULL ,
	[图书编号] [varchar] (50) NULL ,
	[读者编号] [varchar] (20) NULL ,
	[罚款日期] [smalldatetime] NULL ,
	[应罚金额] [money] NULL ,
	[实收金额] [money] NULL ,
	[是否交款] [bit] NULL ,
	[备注] [varchar] (100) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[图书馆] (
	[名称] [varchar] (200) NULL ,
	[馆长] [char] (10) NULL ,
	[负责人] [char] (10) NULL ,
	[电话] [varchar] (30) NULL ,
	[地址] [varchar] (200) NULL ,
	[说明] [varchar] (200) NULL ,
	[备注] [varchar] (200) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[文献印刷] (
	[Code] [varchar] (40) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[文献尺寸] (
	[Code] [varchar] (40) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[文献等级] (
	[Code] [varchar] (40) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[文献语系] (
	[Code] [varchar] (40) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[文献附件] (
	[Code] [varchar] (40) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[期刊丢失] (
	[丢失编号] [int] NOT NULL ,
	[期刊编号] [varchar] (50) NULL ,
	[读者编号] [varchar] (40) NULL ,
	[赔偿金额] [money] NULL ,
	[操作时间] [smalldatetime] NULL ,
	[操作员] [varchar] (20) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[期刊信息] (
	[编号] [varchar] (50) NOT NULL ,
	[条形码] [varchar] (40) NULL ,
	[期刊名] [varchar] (200) NULL ,
	[类型] [varchar] (100) NULL ,
	[统一刊号] [varchar] (40) NULL ,
	[邮发代号] [varchar] (40) NULL ,
	[编辑部] [varchar] (200) NULL ,
	[出版周期] [varchar] (40) NULL ,
	[所属年度] [varchar] (8) NULL ,
	[期号] [int] NOT NULL ,
	[总期号] [int] NOT NULL ,
	[价格] [money] NULL ,
	[书架名称] [varchar] (200) NULL ,
	[现存量] [int] NULL ,
	[库存总量] [int] NULL ,
	[入库时间] [smalldatetime] NULL ,
	[操作员] [varchar] (20) NULL ,
	[简介] [ntext] NULL ,
	[借出次数] [int] NULL ,
	[是否注销] [bit] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[期刊借阅] (
	[借阅编号] [int] NOT NULL ,
	[期刊编号] [varchar] (40) NULL ,
	[读者编号] [varchar] (40) NULL ,
	[押金] [money] NULL ,
	[借阅时间] [smalldatetime] NULL ,
	[应还时间] [smalldatetime] NULL ,
	[续借次数] [int] NULL ,
	[操作员] [varchar] (20) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[期刊归还] (
	[归还编号] [int] NOT NULL ,
	[期刊编号] [varchar] (40) NULL ,
	[读者编号] [varchar] (40) NULL ,
	[退还押金] [money] NULL ,
	[归还时间] [smalldatetime] NULL ,
	[操作员] [varchar] (20) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[期刊征订] (
	[征订编号] [varchar] (50) NOT NULL ,
	[期刊名] [varchar] (200) NULL ,
	[所属年度] [varchar] (8) NULL ,
	[期号] [int] NOT NULL ,
	[类型] [varchar] (100) NULL ,
	[编辑部] [varchar] (200) NULL ,
	[订购者] [varchar] (100) NULL ,
	[订购者联系方式] [varchar] (100) NULL ,
	[订购数量] [int] NULL ,
	[订购金额] [money] NULL ,
	[订购日期] [smalldatetime] NULL ,
	[是否验收] [bit] NOT NULL ,
	[实际金额] [money] NULL ,
	[验收日期] [smalldatetime] NULL ,
	[操作员] [varchar] (20) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[期刊注销] (
	[注销编号] [int] NOT NULL ,
	[期刊编号] [varchar] (40) NULL ,
	[注销数量] [int] NULL ,
	[注销时间] [smalldatetime] NULL ,
	[操作员] [varchar] (20) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[期刊类型] (
	[类型编号] [varchar] (50) NOT NULL ,
	[类型名称] [varchar] (100) NULL ,
	[可借天数] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[期刊罚款] (
	[罚款编号] [int] NOT NULL ,
	[期刊编号] [varchar] (50) NULL ,
	[读者编号] [varchar] (20) NULL ,
	[罚款日期] [smalldatetime] NULL ,
	[应罚金额] [money] NULL ,
	[实收金额] [money] NULL ,
	[是否交款] [bit] NULL ,
	[备注] [varchar] (100) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[管理员] (
	[编号] [varchar] (100) NULL ,
	[名称] [varchar] (20) NULL ,
	[密码] [varchar] (100) NULL ,
	[图书管理] [bit] NOT NULL ,
	[期刊管理] [bit] NOT NULL ,
	[读者管理] [bit] NOT NULL ,
	[图书借还] [bit] NOT NULL ,
	[期刊借还] [bit] NOT NULL ,
	[系统设置] [bit] NOT NULL ,
	[系统查询] [bit] NOT NULL ,
	[排行榜] [bit] NOT NULL ,
	[系统维护] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[读者信息] (
	[条形码] [varchar] (40) NULL ,
	[编号] [varchar] (20) NOT NULL ,
	[姓名] [varchar] (20) NULL ,
	[性别] [varchar] (8) NULL ,
	[类型] [varchar] (20) NOT NULL ,
	[出生日期] [smalldatetime] NULL ,
	[有效证件] [varchar] (60) NULL ,
	[证件号码] [varchar] (60) NULL ,
	[联系方式] [varchar] (100) NULL ,
	[登记日期] [smalldatetime] NULL ,
	[有限期至] [smalldatetime] NULL ,
	[操作员] [varchar] (20) NULL ,
	[备注] [varchar] (100) NULL ,
	[图书借阅次数] [int] NULL ,
	[期刊借阅次数] [int] NULL ,
	[是否挂失] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[读者类型] (
	[类型] [varchar] (20) NOT NULL ,
	[图书册书] [smallint] NULL ,
	[期刊册书] [smallint] NULL ,
	[续借次数] [int] NULL ,
	[限制图书] [bit] NULL ,
	[限制期刊] [bit] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[书架] WITH NOCHECK ADD 
	CONSTRAINT [PK_书架] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[出版社] WITH NOCHECK ADD 
	CONSTRAINT [PK_出版社] PRIMARY KEY  CLUSTERED 
	(
		[出版社编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[图书丢失] WITH NOCHECK ADD 
	CONSTRAINT [PK_图书丢失] PRIMARY KEY  CLUSTERED 
	(
		[丢失编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[图书信息] WITH NOCHECK ADD 
	CONSTRAINT [PK_图书信息] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[图书借阅] WITH NOCHECK ADD 
	CONSTRAINT [PK_图书借阅] PRIMARY KEY  CLUSTERED 
	(
		[借阅编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[图书归还] WITH NOCHECK ADD 
	CONSTRAINT [PK_图书归还] PRIMARY KEY  CLUSTERED 
	(
		[归还编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[图书征订] WITH NOCHECK ADD 
	CONSTRAINT [PK_图书征订] PRIMARY KEY  CLUSTERED 
	(
		[征订编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[图书注销] WITH NOCHECK ADD 
	CONSTRAINT [PK_图书注销] PRIMARY KEY  CLUSTERED 
	(
		[注销编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[图书类型] WITH NOCHECK ADD 
	CONSTRAINT [PK_图书类型] PRIMARY KEY  CLUSTERED 
	(
		[类型编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[图书罚款] WITH NOCHECK ADD 
	CONSTRAINT [PK_图书罚款] PRIMARY KEY  CLUSTERED 
	(
		[罚款编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[期刊丢失] WITH NOCHECK ADD 
	CONSTRAINT [PK_期刊丢失] PRIMARY KEY  CLUSTERED 
	(
		[丢失编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[期刊信息] WITH NOCHECK ADD 
	CONSTRAINT [PK_期刊信息] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[期刊借阅] WITH NOCHECK ADD 
	CONSTRAINT [PK_期刊借阅] PRIMARY KEY  CLUSTERED 
	(
		[借阅编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[期刊归还] WITH NOCHECK ADD 
	CONSTRAINT [PK_期刊归还] PRIMARY KEY  CLUSTERED 
	(
		[归还编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[期刊征订] WITH NOCHECK ADD 
	CONSTRAINT [PK_期刊征订] PRIMARY KEY  CLUSTERED 
	(
		[征订编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[期刊注销] WITH NOCHECK ADD 
	CONSTRAINT [PK_期刊注销] PRIMARY KEY  CLUSTERED 
	(
		[注销编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[期刊类型] WITH NOCHECK ADD 
	CONSTRAINT [PK_期刊类型] PRIMARY KEY  CLUSTERED 
	(
		[类型编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[期刊罚款] WITH NOCHECK ADD 
	CONSTRAINT [PK_期刊罚款] PRIMARY KEY  CLUSTERED 
	(
		[罚款编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[读者信息] WITH NOCHECK ADD 
	CONSTRAINT [PK_读者信息] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[读者类型] WITH NOCHECK ADD 
	CONSTRAINT [PK_读者类型] PRIMARY KEY  CLUSTERED 
	(
		[类型]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[图书征订] ADD 
	CONSTRAINT [DF_图书征订_是否验收] DEFAULT (0) FOR [是否验收]
GO

ALTER TABLE [dbo].[图书丢失] ADD 
	CONSTRAINT [图书丢失_图书编号_fk] FOREIGN KEY 
	(
		[图书编号]
	) REFERENCES [dbo].[图书信息] (
		[编号]
	)
GO

ALTER TABLE [dbo].[图书借阅] ADD 
	CONSTRAINT [图书借阅_图书编号_fk] FOREIGN KEY 
	(
		[图书编号]
	) REFERENCES [dbo].[图书信息] (
		[编号]
	)
GO

ALTER TABLE [dbo].[图书归还] ADD 
	CONSTRAINT [图书归还_图书编号_fk] FOREIGN KEY 
	(
		[图书编号]
	) REFERENCES [dbo].[图书信息] (
		[编号]
	)
GO

ALTER TABLE [dbo].[图书征订] ADD 
	CONSTRAINT [FK_图书征订_图书信息] FOREIGN KEY 
	(
		[图书编号]
	) REFERENCES [dbo].[图书信息] (
		[编号]
	)
GO

ALTER TABLE [dbo].[图书注销] ADD 
	CONSTRAINT [图书注销_图书编号_fk] FOREIGN KEY 
	(
		[图书编号]
	) REFERENCES [dbo].[图书信息] (
		[编号]
	)
GO

ALTER TABLE [dbo].[图书罚款] ADD 
	CONSTRAINT [FK_图书罚款_读者信息] FOREIGN KEY 
	(
		[读者编号]
	) REFERENCES [dbo].[读者信息] (
		[编号]
	),
	CONSTRAINT [FK_图书罚款_图书信息] FOREIGN KEY 
	(
		[图书编号]
	) REFERENCES [dbo].[图书信息] (
		[编号]
	)
GO

ALTER TABLE [dbo].[期刊丢失] ADD 
	CONSTRAINT [期刊丢失_期刊编号_fk] FOREIGN KEY 
	(
		[期刊编号]
	) REFERENCES [dbo].[期刊信息] (
		[编号]
	)
GO

ALTER TABLE [dbo].[期刊罚款] ADD 
	CONSTRAINT [FK_期刊罚款_读者信息] FOREIGN KEY 
	(
		[读者编号]
	) REFERENCES [dbo].[读者信息] (
		[编号]
	),
	CONSTRAINT [FK_期刊罚款_期刊信息] FOREIGN KEY 
	(
		[期刊编号]
	) REFERENCES [dbo].[期刊信息] (
		[编号]
	)
GO

ALTER TABLE [dbo].[读者信息] ADD 
	CONSTRAINT [FK_读者信息_读者类型] FOREIGN KEY 
	(
		[类型]
	) REFERENCES [dbo].[读者类型] (
		[类型]
	)
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create proc sf_图书借阅
as
begin tran
	--借书出库,减少图书库存量
	update 图书信息 set 现存量 = isnull(现存量,0) - 1
		from 图书信息 as a, 图书借阅 as b
		where a.编号=b.图书编号 and b.状态='新借'
	--设置借阅状态
	update 图书借阅 set 续借次数=0,状态='未还'
		where 状态='新借'
commit

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create proc sf_图书归还 @借阅编号 int, @罚款金额 money
as
begin tran
	--借书出库,减少图书库存量
	update 图书信息 set 现存量 = isnull(现存量,0) + 1
		from 图书信息 as a, 图书借阅 as b
		where a.编号=b.图书编号 and b.借阅编号=@借阅编号
	-- 如果罚金不是0, 在 图书罚款 中产生记录
	if @罚款金额<> 0
	insert into 图书罚款(图书编号,读者编号,罚款日期,应罚金额,是否交款)
		select 图书编号,读者编号,getdate(), @罚款金额, 0
		from 图书借阅 where 借阅编号=@借阅编号
	-- 插入图书归还表
	insert into 图书归还(图书编号,读者编号,归还时间)
		select 图书编号,读者编号,getdate()
		from 图书借阅 where 借阅编号=@借阅编号
	--设置借阅状态
	update 图书借阅 set 状态='已还' where 借阅编号=@借阅编号
commit

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create proc sf_图书征订
as
begin tran
	--验收入库,增加图书库存量
	update 图书信息 set 库存总量 = isnull(库存总量,0) + b.订购数量, 
		现存量 = isnull(现存量,0) + b.订购数量, 入库时间 = b.验收日期
		from 图书信息 as a, 图书征订 as b
		where a.编号=b.图书编号 and b.是否验收=0
	--设置图书征订记录的标志,标志为已验收
	update 图书征订 set 验收日期=getdate(), 是否验收=1
		where 是否验收=0
commit

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

