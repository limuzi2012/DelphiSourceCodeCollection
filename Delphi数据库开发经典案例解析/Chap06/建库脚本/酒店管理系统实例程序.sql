if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_帐单明细_入住单]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[帐单明细] DROP CONSTRAINT FK_帐单明细_入住单
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_入住单_客房信息]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[入住单] DROP CONSTRAINT FK_入住单_客房信息
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_客房信息_客房类型]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[客房信息] DROP CONSTRAINT FK_客房信息_客房类型
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_入住单_客房类型]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[入住单] DROP CONSTRAINT FK_入住单_客房类型
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_入住单历史_客房类型]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[入住单历史] DROP CONSTRAINT FK_入住单历史_客房类型
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_预定单_客房类型]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[预定单] DROP CONSTRAINT FK_预定单_客房类型
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_预定单历史_客房类型]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[预定单历史] DROP CONSTRAINT FK_预定单历史_客房类型
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_客房信息_楼层信息]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[客房信息] DROP CONSTRAINT FK_客房信息_楼层信息
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sf_保存入住单]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sf_保存入住单]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sf_收银退房]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sf_收银退房]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sf_计算应收帐款]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sf_计算应收帐款]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[入住单]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[入住单]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[入住单历史]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[入住单历史]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[客房信息]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[客房信息]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[客房类型]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[客房类型]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[帐单明细]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[帐单明细]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[帐单明细历史]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[帐单明细历史]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[楼层信息]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[楼层信息]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[预定单]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[预定单]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[预定单历史]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[预定单历史]
GO

CREATE TABLE [dbo].[入住单] (
	[入住单号] [varchar] (36) NOT NULL ,
	[预定单号] [varchar] (36) NULL ,
	[会员编号] [int] NULL ,
	[客房类型] [varchar] (4) NULL ,
	[抵店时间] [smalldatetime] NULL ,
	[离店时间] [smalldatetime] NULL ,
	[单据状态] [varchar] (20) NULL ,
	[入住人数] [int] NULL ,
	[客房编号] [varchar] (12) NULL ,
	[客房价格] [money] NULL ,
	[入住价格] [money] NULL ,
	[折扣] [decimal](4, 2) NULL ,
	[折扣原因] [varchar] (60) NULL ,
	[是否加床] [bit] NULL ,
	[加床价格] [money] NULL ,
	[预收款] [money] NULL ,
	[预定人] [varchar] (20) NULL ,
	[预定公司] [varchar] (60) NULL ,
	[联系电话] [varchar] (40) NULL ,
	[备注] [varchar] (510) NULL ,
	[操作员] [varchar] (10) NULL ,
	[业务员] [varchar] (50) NULL ,
	[早餐] [bit] NULL ,
	[叫醒] [bit] NULL ,
	[保密] [bit] NULL ,
	[vip] [bit] NULL ,
	[电话等级] [varchar] (20) NULL ,
	[特要说明] [varchar] (50) NULL ,
	[应收帐款] [money] NULL ,
	[是否结帐] [bit] NULL ,
	[结帐金额] [money] NULL ,
	[结帐日期] [smalldatetime] NULL ,
	[付款方式] [varchar] (20) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[入住单历史] (
	[入住单号] [varchar] (36) NOT NULL ,
	[预定单号] [varchar] (36) NULL ,
	[会员编号] [int] NULL ,
	[客房类型] [varchar] (4) NULL ,
	[抵店时间] [smalldatetime] NULL ,
	[离店时间] [smalldatetime] NULL ,
	[单据状态] [varchar] (20) NULL ,
	[入住人数] [int] NULL ,
	[客房编号] [varchar] (12) NULL ,
	[客房价格] [money] NULL ,
	[入住价格] [money] NULL ,
	[折扣] [decimal](4, 2) NULL ,
	[折扣原因] [varchar] (60) NULL ,
	[是否加床] [bit] NULL ,
	[加床价格] [money] NULL ,
	[预收款] [money] NULL ,
	[预定人] [varchar] (20) NULL ,
	[预定公司] [varchar] (60) NULL ,
	[联系电话] [varchar] (40) NULL ,
	[备注] [varchar] (510) NULL ,
	[操作员] [varchar] (10) NULL ,
	[业务员] [varchar] (50) NULL ,
	[早餐] [bit] NULL ,
	[叫醒] [bit] NULL ,
	[保密] [bit] NULL ,
	[vip] [bit] NULL ,
	[电话等级] [varchar] (20) NULL ,
	[特要说明] [varchar] (50) NULL ,
	[应收帐款] [money] NULL ,
	[是否结帐] [bit] NULL ,
	[结帐金额] [money] NULL ,
	[结帐日期] [smalldatetime] NULL ,
	[付款方式] [varchar] (20) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[客房信息] (
	[客房编号] [varchar] (12) NOT NULL ,
	[类型编号] [varchar] (4) NOT NULL ,
	[楼层编号] [int] NOT NULL ,
	[额定人数] [int] NULL ,
	[床数] [int] NULL ,
	[客房描述] [varchar] (40) NULL ,
	[备注] [varchar] (100) NULL ,
	[状态] [varchar] (4) NULL ,
	[是否可拼房] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[客房类型] (
	[类型编号] [varchar] (4) NOT NULL ,
	[类型名称] [varchar] (40) NULL ,
	[价格] [money] NULL ,
	[拼房价格] [money] NULL ,
	[可超预定数] [decimal](3, 0) NULL ,
	[是否可拼房] [bit] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[帐单明细] (
	[帐单编号] [int] IDENTITY (1, 1) NOT NULL ,
	[入住单号] [varchar] (36) NOT NULL ,
	[消费内容] [varchar] (40) NULL ,
	[消费金额] [money] NULL ,
	[消费时间] [smalldatetime] NULL ,
	[备注] [varchar] (80) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[帐单明细历史] (
	[帐单编号] [int] NOT NULL ,
	[入住单号] [varchar] (36) NOT NULL ,
	[消费内容] [varchar] (40) NULL ,
	[消费金额] [money] NULL ,
	[消费时间] [smalldatetime] NULL ,
	[备注] [varchar] (80) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[楼层信息] (
	[楼层编号] [int] NOT NULL ,
	[楼层名称] [varchar] (60) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[预定单] (
	[预定单号] [varchar] (36) NOT NULL ,
	[会员编号] [int] NULL ,
	[客房类型] [varchar] (4) NOT NULL ,
	[抵店时间] [smalldatetime] NOT NULL ,
	[离店时间] [smalldatetime] NULL ,
	[单据状态] [varchar] (20) NULL ,
	[入住人数] [int] NULL ,
	[客房编号] [varchar] (12) NULL ,
	[客房价格] [money] NULL ,
	[入住价格] [money] NULL ,
	[折扣] [decimal](4, 2) NULL ,
	[折扣原因] [varchar] (60) NULL ,
	[是否加床] [bit] NULL ,
	[加床价格] [money] NULL ,
	[预收款] [money] NULL ,
	[预定人] [varchar] (20) NULL ,
	[预定公司] [varchar] (60) NULL ,
	[联系电话] [varchar] (40) NULL ,
	[备注] [varchar] (510) NULL ,
	[操作员] [varchar] (10) NULL ,
	[业务员] [varchar] (50) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[预定单历史] (
	[预定单号] [varchar] (36) NOT NULL ,
	[会员编号] [int] NULL ,
	[客房类型] [varchar] (4) NULL ,
	[抵店时间] [smalldatetime] NULL ,
	[离店时间] [smalldatetime] NULL ,
	[单据状态] [varchar] (20) NULL ,
	[入住人数] [int] NULL ,
	[客房编号] [varchar] (12) NULL ,
	[客房价格] [money] NULL ,
	[入住价格] [money] NULL ,
	[折扣] [decimal](4, 2) NULL ,
	[折扣原因] [varchar] (60) NULL ,
	[是否加床] [bit] NULL ,
	[加床价格] [money] NULL ,
	[预收款] [money] NULL ,
	[预定人] [varchar] (20) NULL ,
	[预定公司] [varchar] (60) NULL ,
	[联系电话] [varchar] (40) NULL ,
	[备注] [varchar] (510) NULL ,
	[操作员] [varchar] (10) NULL ,
	[业务员] [varchar] (50) NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[入住单] WITH NOCHECK ADD 
	CONSTRAINT [PK_入住单] PRIMARY KEY  CLUSTERED 
	(
		[入住单号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[入住单历史] WITH NOCHECK ADD 
	CONSTRAINT [PK_入住单历史] PRIMARY KEY  CLUSTERED 
	(
		[入住单号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[客房信息] WITH NOCHECK ADD 
	CONSTRAINT [PK_客房信息] PRIMARY KEY  CLUSTERED 
	(
		[客房编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[客房类型] WITH NOCHECK ADD 
	CONSTRAINT [PK_客房类型] PRIMARY KEY  CLUSTERED 
	(
		[类型编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[帐单明细] WITH NOCHECK ADD 
	CONSTRAINT [PK_帐单明细] PRIMARY KEY  CLUSTERED 
	(
		[帐单编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[楼层信息] WITH NOCHECK ADD 
	CONSTRAINT [PK_楼层信息] PRIMARY KEY  CLUSTERED 
	(
		[楼层编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[预定单] WITH NOCHECK ADD 
	CONSTRAINT [PK_预定单] PRIMARY KEY  CLUSTERED 
	(
		[预定单号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[预定单历史] WITH NOCHECK ADD 
	CONSTRAINT [PK_预定单历史] PRIMARY KEY  CLUSTERED 
	(
		[预定单号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[入住单] ADD 
	CONSTRAINT [FK_入住单_客房类型] FOREIGN KEY 
	(
		[客房类型]
	) REFERENCES [dbo].[客房类型] (
		[类型编号]
	),
	CONSTRAINT [FK_入住单_客房信息] FOREIGN KEY 
	(
		[客房编号]
	) REFERENCES [dbo].[客房信息] (
		[客房编号]
	)
GO

ALTER TABLE [dbo].[入住单历史] ADD 
	CONSTRAINT [FK_入住单历史_客房类型] FOREIGN KEY 
	(
		[客房类型]
	) REFERENCES [dbo].[客房类型] (
		[类型编号]
	)
GO

ALTER TABLE [dbo].[客房信息] ADD 
	CONSTRAINT [FK_客房信息_客房类型] FOREIGN KEY 
	(
		[类型编号]
	) REFERENCES [dbo].[客房类型] (
		[类型编号]
	),
	CONSTRAINT [FK_客房信息_楼层信息] FOREIGN KEY 
	(
		[楼层编号]
	) REFERENCES [dbo].[楼层信息] (
		[楼层编号]
	)
GO

ALTER TABLE [dbo].[帐单明细] ADD 
	CONSTRAINT [FK_帐单明细_入住单] FOREIGN KEY 
	(
		[入住单号]
	) REFERENCES [dbo].[入住单] (
		[入住单号]
	)
GO

ALTER TABLE [dbo].[预定单] ADD 
	CONSTRAINT [FK_预定单_客房类型] FOREIGN KEY 
	(
		[客房类型]
	) REFERENCES [dbo].[客房类型] (
		[类型编号]
	)
GO

ALTER TABLE [dbo].[预定单历史] ADD 
	CONSTRAINT [FK_预定单历史_客房类型] FOREIGN KEY 
	(
		[客房类型]
	) REFERENCES [dbo].[客房类型] (
		[类型编号]
	)
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create proc sf_保存入住单 @入住单号 varchar(36)
as
begin tran
	-- 修改客房信息	
	update 客房信息 set 状态='住房' from 客房信息 as a, 入住单 as b 
		where a.客房编号=b.客房编号 and b.入住单号=@入住单号
	-- 修改预定单状态
	update 预定单 set 单据状态='入住' from 预定单 as a, 入住单 as b 
		where a.预定单号=b.预定单号 and b.入住单号=@入住单号
	-- 将已入住的预定单放入历史
	insert into 预定单历史 select * from 预定单 where 单据状态 = '入住'
	-- 清除已入住预定单
	delete from 预定单 where 单据状态 = '入住'
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

create proc sf_收银退房 @入住单号 varchar(36), @付款方式 varchar(20)
as
begin tran

	update 入住单 set 离店时间 = getdate(), 单据状态 = '离店',
		付款方式 = @付款方式, 是否结帐=1,
		结帐日期 = getdate() 
			where 入住单号 = @入住单号
	-- 设置房态
	update 客房信息 set 状态='空房' from 客房信息 as a, 入住单 as b 
		where a.客房编号=b.客房编号 and b.入住单号=@入住单号
	-- 倒入历史
	insert into 入住单历史 select * from 入住单 
		where 入住单号 = @入住单号
	insert into 帐单明细历史 select * from 帐单明细 
		where 入住单号 = @入住单号
	delete from 帐单明细 
		where 入住单号 = @入住单号
	-- 清除入住单
	delete from 入住单
		where 入住单号 = @入住单号
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

create proc sf_计算应收帐款 @入住单号 varchar(36)
as
begin tran
	declare @total money
	declare @datecount int
	-- 设置离店时间
	update 入住单 set 离店时间 = getdate() where 入住单号 = @入住单号
	-- 住店天数
	select @datecount = datediff(dd,抵店时间,getdate())
		from 入住单 where 入住单号 = @入住单号
	-- 住店金额
	select @total = 0
	select @total = @datecount*(isnull(入住价格,0)+isnull(加床价格,0))
		from 入住单 where 入住单号 = @入住单号
	-- 消费金额
	select @total = @total + isnull(b.消费金额,0) from
		(select sum(消费金额) as 消费金额 from 帐单明细
			where 入住单号 = @入住单号) as b
	-- 设置应收帐款和结算金额
	update 入住单 set 应收帐款 = @total, 
		结帐金额 = @total - isnull(预收款,0) 
			where 入住单号 = @入住单号
commit

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

