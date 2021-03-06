if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_分录表_凭证表]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[分录表] DROP CONSTRAINT FK_分录表_凭证表
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[本期汇总帐簿_科目代码_fk]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[本期汇总帐簿] DROP CONSTRAINT 本期汇总帐簿_科目代码_fk
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[本期明细帐簿_科目代码_fk]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[本期明细帐簿] DROP CONSTRAINT 本期明细帐簿_科目代码_fk
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[分录表_科目代码_fk]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[分录表] DROP CONSTRAINT 分录表_科目代码_fk
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[分录表历史_科目代码_fk]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[分录表历史] DROP CONSTRAINT 分录表历史_科目代码_fk
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[科目余额表_科目代码_fk]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[科目余额表] DROP CONSTRAINT 科目余额表_科目代码_fk
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[帐簿初始化表_科目代码_fk]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[帐簿初始化表] DROP CONSTRAINT 帐簿初始化表_科目代码_fk
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sf_凭证过帐]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sf_凭证过帐]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sf_初始化帐户]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sf_初始化帐户]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sf_启用帐户]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sf_启用帐户]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sf_期末结帐]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sf_期末结帐]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sf_计算资产负债表]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sf_计算资产负债表]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[凭证表]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[凭证表]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[凭证表历史]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[凭证表历史]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[分录表]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[分录表]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[分录表历史]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[分录表历史]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[帐簿初始化表]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[帐簿初始化表]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[本期明细帐簿]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[本期明细帐簿]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[本期汇总帐簿]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[本期汇总帐簿]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[科目余额表]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[科目余额表]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[科目表]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[科目表]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[系统参数表]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[系统参数表]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[资产负债表]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[资产负债表]
GO

CREATE TABLE [dbo].[凭证表] (
	[凭证编号] [char] (10) NOT NULL ,
	[会计期间] [int] NULL ,
	[凭证字号] [char] (2) NULL ,
	[日期] [datetime] NULL ,
	[附单据] [int] NULL ,
	[制单] [char] (20) NULL ,
	[借方合计] [money] NULL ,
	[贷方合计] [money] NULL ,
	[过帐状态] [char] (4) NULL ,
	[凭证状态] [char] (10) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[凭证表历史] (
	[凭证编号] [char] (10) NOT NULL ,
	[会计期间] [int] NULL ,
	[凭证字号] [char] (2) NULL ,
	[日期] [datetime] NULL ,
	[附单据] [int] NULL ,
	[制单] [char] (20) NULL ,
	[借方合计] [money] NULL ,
	[贷方合计] [money] NULL ,
	[过帐状态] [char] (4) NULL ,
	[凭证状态] [char] (10) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[分录表] (
	[编号] [int] IDENTITY (1, 1) NOT NULL ,
	[凭证编号] [char] (10) NOT NULL ,
	[摘要] [char] (40) NULL ,
	[科目代码] [char] (20) NULL ,
	[借方] [money] NULL ,
	[贷方] [money] NULL ,
	[数量] [int] NULL ,
	[单价] [money] NULL ,
	[结算方式] [char] (10) NULL ,
	[结算号] [int] NULL ,
	[结算日期] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[分录表历史] (
	[编号] [int] NOT NULL ,
	[凭证编号] [char] (10) NOT NULL ,
	[摘要] [char] (40) NULL ,
	[科目代码] [char] (20) NULL ,
	[借方] [money] NULL ,
	[贷方] [money] NULL ,
	[数量] [int] NULL ,
	[单价] [money] NULL ,
	[结算方式] [char] (10) NULL ,
	[结算号] [int] NULL ,
	[结算日期] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[帐簿初始化表] (
	[科目代码] [char] (20) NOT NULL ,
	[科目名称] [char] (20) NULL ,
	[累计借方] [money] NULL ,
	[累计贷方] [money] NULL ,
	[期初余额] [money] NULL ,
	[余额方向] [char] (4) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[本期明细帐簿] (
	[内部编号] [int] IDENTITY (1, 1) NOT NULL ,
	[分录编号] [int] NULL ,
	[会计期间] [int] NULL ,
	[凭证字号] [char] (4) NULL ,
	[凭证编号] [char] (10) NULL ,
	[摘要] [char] (40) NULL ,
	[科目代码] [char] (20) NULL ,
	[借方] [money] NULL ,
	[贷方] [money] NULL ,
	[余额方向] [char] (4) NULL ,
	[余额] [money] NULL ,
	[数量] [int] NULL ,
	[单价] [money] NULL ,
	[结算方式] [char] (10) NULL ,
	[结算号] [int] NULL ,
	[结算日期] [char] (10) NULL ,
	[余额标记] [char] (4) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[本期汇总帐簿] (
	[科目代码] [char] (20) NOT NULL ,
	[会计期间] [int] NULL ,
	[期初余额] [money] NULL ,
	[本期借方合计] [money] NULL ,
	[本期贷方合计] [money] NULL ,
	[本年借方累计] [money] NULL ,
	[本年贷方累计] [money] NULL ,
	[余额] [money] NULL ,
	[余额方向] [char] (4) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[科目余额表] (
	[科目代码] [char] (20) NULL ,
	[期初借方余额] [money] NULL ,
	[期初贷方余额] [money] NULL ,
	[本期借方发生额] [money] NULL ,
	[本期贷方发生额] [money] NULL ,
	[本年借方累计发生额] [money] NULL ,
	[本年贷方累计发生额] [money] NULL ,
	[本期借方余额] [money] NULL ,
	[本期贷方余额] [money] NULL ,
	[最后结算分录] [int] NULL ,
	[会计期间] [int] NULL ,
	[余额方向] [char] (4) NULL ,
	[内部编号] [int] IDENTITY (1, 1) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[科目表] (
	[科目代码] [char] (20) NOT NULL ,
	[科目名称] [char] (20) NULL ,
	[助记码] [char] (20) NULL ,
	[科目类别] [char] (20) NULL ,
	[是否存货科目] [char] (10) NULL ,
	[余额方向] [char] (4) NULL ,
	[数量单位] [char] (10) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[系统参数表] (
	[编号] [int] IDENTITY (1, 1) NOT NULL ,
	[参数名称] [char] (20) NULL ,
	[取值] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[资产负债表] (
	[会计期间] [int] NOT NULL ,
	[现金及现金等价物] [money] NULL ,
	[应收帐款] [money] NULL ,
	[坏帐准备] [money] NULL ,
	[应收帐款净值] [money] NULL ,
	[流动资产总计] [money] NULL ,
	[固定资产原值] [money] NULL ,
	[累计折旧] [money] NULL ,
	[固定资产总计] [money] NULL ,
	[其他资产] [money] NULL ,
	[资产总计] [money] NULL ,
	[应付帐款] [money] NULL ,
	[预收帐款] [money] NULL ,
	[应付工资] [money] NULL ,
	[其他负债] [money] NULL ,
	[负债总计] [money] NULL ,
	[实收资本] [money] NULL ,
	[资本公积] [money] NULL ,
	[赢余公积] [money] NULL ,
	[未分配利润] [money] NULL ,
	[所有者权益总计] [money] NULL ,
	[负债及所有者权益总计] [money] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[凭证表] WITH NOCHECK ADD 
	CONSTRAINT [PK_凭证表] PRIMARY KEY  CLUSTERED 
	(
		[凭证编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[分录表] WITH NOCHECK ADD 
	CONSTRAINT [PK_分录表] PRIMARY KEY  CLUSTERED 
	(
		[编号]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[帐簿初始化表] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[科目代码]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[本期汇总帐簿] WITH NOCHECK ADD 
	CONSTRAINT [PK_本期汇总帐簿] PRIMARY KEY  CLUSTERED 
	(
		[科目代码]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[科目表] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[科目代码]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[资产负债表] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[会计期间]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[分录表] ADD 
	CONSTRAINT [FK_分录表_凭证表] FOREIGN KEY 
	(
		[凭证编号]
	) REFERENCES [dbo].[凭证表] (
		[凭证编号]
	),
	CONSTRAINT [分录表_科目代码_fk] FOREIGN KEY 
	(
		[科目代码]
	) REFERENCES [dbo].[科目表] (
		[科目代码]
	)
GO

ALTER TABLE [dbo].[分录表历史] ADD 
	CONSTRAINT [分录表历史_科目代码_fk] FOREIGN KEY 
	(
		[科目代码]
	) REFERENCES [dbo].[科目表] (
		[科目代码]
	)
GO

ALTER TABLE [dbo].[帐簿初始化表] ADD 
	CONSTRAINT [帐簿初始化表_科目代码_fk] FOREIGN KEY 
	(
		[科目代码]
	) REFERENCES [dbo].[科目表] (
		[科目代码]
	)
GO

ALTER TABLE [dbo].[本期明细帐簿] ADD 
	CONSTRAINT [本期明细帐簿_科目代码_fk] FOREIGN KEY 
	(
		[科目代码]
	) REFERENCES [dbo].[科目表] (
		[科目代码]
	)
GO

ALTER TABLE [dbo].[本期汇总帐簿] ADD 
	CONSTRAINT [本期汇总帐簿_科目代码_fk] FOREIGN KEY 
	(
		[科目代码]
	) REFERENCES [dbo].[科目表] (
		[科目代码]
	)
GO

ALTER TABLE [dbo].[科目余额表] ADD 
	CONSTRAINT [科目余额表_科目代码_fk] FOREIGN KEY 
	(
		[科目代码]
	) REFERENCES [dbo].[科目表] (
		[科目代码]
	)
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create proc sf_凭证过帐
as 
begin tran
	-- 设置本期汇总帐簿信息
	update 本期汇总帐簿 set 本期借方合计 = 本期借方合计 + b.借方,
		本期贷方合计 = 本期贷方合计 + b.贷方,
		本年借方累计 = 本年借方累计 + b.借方,
		本年贷方累计 = 本年贷方累计 + b.贷方,
		余额 = 余额 + case when 余额方向='借方' then (借方 - 贷方)
			else (贷方 - 借方) end 
		from 本期汇总帐簿 as a,
		(select 科目代码, sum(借方) as 借方, sum(贷方) as 贷方 
			from 分录表 as f, 凭证表 as p where f.凭证编号 = p.凭证编号 
			group by f.科目代码) as b
		where a.科目代码 = b.科目代码
	-- 设置本期明细帐簿信息
	insert into 本期明细帐簿(分录编号,会计期间,凭证字号, 凭证编号, 摘要, 
		科目代码, 借方, 贷方, 数量, 单价, 结算方式, 
		结算号, 结算日期) 
		select 编号,会计期间,凭证字号, p.凭证编号, 摘要, 
			科目代码, 借方, 贷方, 数量, 单价, 结算方式, 
			结算号, 结算日期 from 凭证表 as p, 分录表 as f
			where f.凭证编号 = p.凭证编号 
	--计算余额
	update 本期明细帐簿
		set 余额方向=a.余额方向 from 科目表 as a
		where 本期明细帐簿.科目代码=a.科目代码
	-- 通过游标循环计算余额
	declare @bh int, @dm char(20), @jf money, @df money
	declare @fx char(4), @bj char(4), @ye money, @kjqj int
	declare mycursor cursor for select 内部编号,科目代码,
		借方,贷方,余额方向,余额标记,会计期间 from 本期明细帐簿
		where 余额标记 is null  order by 内部编号
	open mycursor
	fetch next from mycursor into @bh,@dm,@jf,@df,@fx,@bj,@kjqj
	while (@@fetch_status=0)
	begin
		select @ye=NULL
		select @ye = 余额 from 本期明细帐簿 where 内部编号 in 
			(select max(内部编号) from 本期明细帐簿 
				where 内部编号 < @bh and 科目代码=@dm 
				and 余额标记 = '是')
		-- 没有,本期第一条明细,从科目余额表取余额
		if(@ye is null)   
			select @ye = case when 余额方向='借方' then
				本期借方余额 - 本期贷方余额 else
				本期贷方余额 - 本期借方余额 end
				from 科目余额表 where 会计期间 = @kjqj
				and 科目代码 = @dm
		select @ye = isnull(@ye,0)
		update 本期明细帐簿
			set 余额=case when @fx='借方' then  
				@ye + @jf - @df else
				@ye + @df - @jf end,
			余额标记='是'
			where 内部编号=@bh
 		fetch next from mycursor into @bh,@dm,@jf,@df,@fx,@bj,@kjqj
	end
	close mycursor
	deallocate mycursor
	-- 更改状态
	update 凭证表 set 过帐状态 = '已过'
	-- 放入历史
	insert into 凭证表历史 select * from 凭证表
	insert into 分录表历史 select * from 分录表
	-- 清除已过帐数据
	-- 注意,改放到程序中清除,因为要统计凭证张数/分录张数和金额
	-- 统计后删除
	-- delete from 分录表
	-- delete from 凭证表
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


create proc sf_初始化帐户
as 
begin tran
	-- 清除原来数据,从新建立帐户
	delete from 帐簿初始化表
	-- 设置帐户初始基本数据
	insert into 帐簿初始化表
		(科目代码,科目名称,累计借方,累计贷方,期初余额,余额方向)
		select 科目代码,科目名称,0,0,0,余额方向 from 科目表
	-- 设置初始信息
	update 系统参数表 set 取值 = datepart(mm,getdate())
		where 参数名称 = '会计期间开始月份'
	update 系统参数表 set 取值 = datepart(mm,getdate()) 
		where 参数名称 = '当前会计期间'
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


create proc sf_启用帐户
as 
begin tran
	-- 清除原来数据,从新建立帐户
	delete from 科目余额表
	delete from 本期汇总帐簿
	delete from 本期明细帐簿
	delete from 分录表
	delete from 分录表历史
	delete from 凭证表
	delete from 凭证表历史
	-- 设置本期汇总帐簿及科目余额表
	insert into 本期汇总帐簿 select 科目代码,0,期初余额,
		0,0,0,0,期初余额,余额方向 from 帐簿初始化表
	update 本期汇总帐簿 set 会计期间=b.取值 from 
		系统参数表 as b where 参数名称='当前会计期间'
	insert into 科目余额表(科目代码, 期初借方余额, 期初贷方余额,
			本期借方发生额, 本期贷方发生额, 本年借方累计发生额, 
			本年贷方累计发生额, 本期借方余额, 本期贷方余额, 
			 余额方向) 
		select 科目代码,累计借方,累计贷方,0,0,0,0,
		case when 余额方向='借方' then 期初余额 else 0 end,
		case when 余额方向='贷方' then 期初余额 else 0 end,
		余额方向 from 帐簿初始化表
	update 科目余额表 set 会计期间=b.取值 from 
		系统参数表 as b where 参数名称='当前会计期间'
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

create proc sf_期末结帐
as 
begin tran
	-- 先将没有过帐的凭证过帐
	exec sf_凭证过帐
	declare @kjqj int    -- 当前会计期间
	select @kjqj = 会计期间 from 本期汇总帐簿 
	-- 计算科目余额表,可以统计资产负债表/损溢表等
	update 科目余额表 set 本期借方发生额 = b.本期借方合计,
			本期贷方发生额 = b.本期贷方合计,
			会计期间 = b.会计期间, 余额方向 = b.余额方向
		from  科目余额表 as a, 本期汇总帐簿 as b
		where a.科目代码 = b.科目代码 and a.会计期间=b.会计期间
	update 科目余额表 set 
		本年借方累计发生额 = 本年借方累计发生额 + 本期借方发生额,
		本年贷方累计发生额 = 本年贷方累计发生额 + 本期贷方发生额,
		本期借方余额 = 期初借方余额 + 本期借方发生额,
		本期贷方余额 = 期初贷方余额 + 本期贷方发生额
		where 会计期间 = @kjqj
	-- 更新会计期间
	update 系统参数表 set 取值 = 取值 + 1 where 参数名称='当前会计期间'
	-- 将本期汇总帐簿和明细帐簿倒入历史,实例程序不演示
	----------------------------------------------
	-- 清除汇总帐簿和明细帐簿,进入新的会计期间
	update 本期汇总帐簿 set 会计期间 = 会计期间 + 1, 期初余额=余额,
		本期借方合计 = 0, 本期贷方合计 = 0, 余额 = 0
	delete from 本期明细帐簿 
	-- 新会计期间的科目余额表
	insert into 科目余额表(科目代码, 期初借方余额, 期初贷方余额,
			本期借方发生额, 本期贷方发生额, 本年借方累计发生额, 
			本年贷方累计发生额, 本期借方余额, 本期贷方余额, 
			 余额方向,会计期间) 
		select 科目代码, 本期借方余额, 本期贷方余额,0,0,0,0,
			本期借方余额, 本期贷方余额, 余额方向,会计期间+1 
			from 科目余额表 where 会计期间 = @kjqj
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

create proc sf_计算资产负债表 @kjqj int
as 
begin tran
	-- 计算资产负债表,这里提供计算的方法供演示
	-- 没有列出的明细项目都归到其他资产和其他负债里
	-- 注意,这里按照科目代码统计,主要说明资产负债表的含意和计算方法
	-- 如果科目代码不是这样,改存储过程需要作相应的修改
	delete from 资产负债表 where 会计期间 = @kjqj
	insert into 资产负债表(会计期间) values(@kjqj)
	update 资产负债表 set 现金及现金等价物 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期借方余额,0)-isnull(本期贷方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 
			科目代码 >= 101 and 科目代码 <= 111)
			as b where a.会计期间 = @kjqj
	update 资产负债表 set 应收帐款 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期借方余额,0)-isnull(本期贷方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 
			科目代码 >= 121 and 科目代码 <= 129 and 科目代码<>125)
			as b where a.会计期间 = @kjqj
	-- 注意坏帐准备为贷方
	update 资产负债表 set 坏帐准备 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期贷方余额,0)-isnull(本期借方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 
			科目代码 = 125)
			as b where a.会计期间 = @kjqj
	update 资产负债表 set 应收帐款净值 = 应收帐款 - 坏帐准备
	update 资产负债表 set 流动资产总计 = 现金及现金等价物 + 应收帐款净值
	update 资产负债表 set 固定资产原值 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期借方余额,0)-isnull(本期贷方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 科目代码 =171)
			as b where a.会计期间 = @kjqj
	-- 注意累计折旧为贷方
	update 资产负债表 set 累计折旧 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期贷方余额,0)-isnull(本期借方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 科目代码 = 175)
			as b where a.会计期间 = @kjqj
	update 资产负债表 set 固定资产总计 = 固定资产原值 - 累计折旧
	update 资产负债表 set 其他资产 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期借方余额,0)-isnull(本期贷方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 
			科目代码 >= 131 and 科目代码 <= 195 and 科目代码<>171
			and 科目代码 <> 175)
			as b where a.会计期间 = @kjqj
	update 资产负债表 set 资产总计 = 流动资产总计 + 固定资产总计 + 其他资产
	-- 计算负债及所有者权益
	-- 负债类级别都是贷方金额
	update 资产负债表 set 应付帐款 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期贷方余额,0)-isnull(本期借方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 
			科目代码 >= 201 and 科目代码 <= 204 )
			as b where a.会计期间 = @kjqj
	update 资产负债表 set 预收帐款 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期贷方余额,0)-isnull(本期借方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 
			科目代码 = 206)
			as b where a.会计期间 = @kjqj
	update 资产负债表 set 应付工资 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期贷方余额,0)-isnull(本期借方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 科目代码 = 215)
			as b where a.会计期间 = @kjqj
	update 资产负债表 set 其他负债 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期贷方余额,0)-isnull(本期借方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 
			科目代码 >= 209 and 科目代码 <= 281 and 科目代码 <> 215)
			as b where a.会计期间 = @kjqj
	update 资产负债表 set 负债总计 = 应付帐款 + 预收帐款 + 应付工资 + 其他负债
	-- 计算所有者权益
	update 资产负债表 set 实收资本 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期贷方余额,0)-isnull(本期借方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 科目代码 = 301)
			as b where a.会计期间 = @kjqj
	update 资产负债表 set 资本公积 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期贷方余额,0)-isnull(本期借方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 科目代码 = 311)
			as b where a.会计期间 = @kjqj
	update 资产负债表 set 赢余公积 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期贷方余额,0)-isnull(本期借方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 科目代码 = 313)
			as b where a.会计期间 = @kjqj
	update 资产负债表 set 未分配利润 = b.金额 from 资产负债表 as a,
		(select sum(isnull(本期贷方余额,0)-isnull(本期借方余额,0)) as 金额
			from 科目余额表 where 会计期间 = @kjqj and 
			科目代码 = 321 or 科目代码 = 322 )
			as b where a.会计期间 = @kjqj
	update 资产负债表 set 所有者权益总计 = 实收资本 + 资本公积 + 
		赢余公积 + 未分配利润
	update 资产负债表 set 负债及所有者权益总计 = 负债总计 + 所有者权益总计
commit

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

