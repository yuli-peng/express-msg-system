USE [master]
GO
/****** Object:  Database [jspmkdgsglwzpjy52A9]    Script Date: 01/08/2017 16:35:24 ******/
CREATE DATABASE [jspmkdgsglwzpjy52A9] ON  PRIMARY 
( NAME = N'jspmkdgsglwzpjy52A9', FILENAME = N'D:\sql2008\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\jspmkdgsglwzpjy52A9.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'jspmkdgsglwzpjy52A9_log', FILENAME = N'D:\sql2008\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\jspmkdgsglwzpjy52A9_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [jspmkdgsglwzpjy52A9].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET ANSI_NULLS OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET ANSI_PADDING OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET ARITHABORT OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET  DISABLE_BROKER
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET  READ_WRITE
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET RECOVERY SIMPLE
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET  MULTI_USER
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [jspmkdgsglwzpjy52A9] SET DB_CHAINING OFF
GO
USE [jspmkdgsglwzpjy52A9]
GO
/****** Object:  Table [dbo].[youqinglianjie]    Script Date: 01/08/2017 16:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[youqinglianjie](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[wangzhanmingcheng] [varchar](50) NULL,
	[wangzhi] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[youqinglianjie] ON
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (1, N'百度', N'http://www.baidu.com', CAST(0x0000A6EF017E80AF AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (2, N'谷歌', N'http://www.google.cn', CAST(0x0000A6EF017E80B0 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (3, N'新浪', N'http://www.sina.com', CAST(0x0000A6EF017E80B0 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (4, N'雅虎', N'http://www.yahoo.cn', CAST(0x0000A6EF017E80B0 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (5, N'腾讯', N'http://www.qq.com', CAST(0x0000A6EF017E80B0 AS DateTime))
SET IDENTITY_INSERT [dbo].[youqinglianjie] OFF
/****** Object:  Table [dbo].[yonghuzhuce]    Script Date: 01/08/2017 16:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yonghuzhuce](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[yonghuming] [varchar](50) NULL,
	[mima] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[xingbie] [varchar](2) NULL,
	[chushengnianyue] [varchar](50) NULL,
	[QQ] [varchar](50) NULL,
	[youxiang] [varchar](50) NULL,
	[dianhua] [varchar](50) NULL,
	[shenfenzheng] [varchar](50) NULL,
	[touxiang] [varchar](50) NULL,
	[dizhi] [varchar](300) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL,
	[issh] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[yonghuzhuce] ON
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (1, N'555', N'555', N'何升高', N'男', N'2012-07-08', N'429489354', N'gsgs@163.com', N'13186835580', N'52353253262', N'upload/1333961148718.jpg', N'龙港龙翔路1170号', N'mfgmfgmfg', CAST(0x0000A6EF017E80BA AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (2, N'leejie', N'leejie', N'李龙', N'男', N'2012-05-21', N'851781333', N'fege@126.com', N'63474337', N'623632153', N'upload/1333963398718.gif', N'温州飞翔路2号', N'htrjrtjr', CAST(0x0000A6EF017E80BA AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (3, N'mygod', N'mygod', N'陈德才', N'男', N'2012-02-02', N'870538338', N'gshf@yahoo.com', N'9696556', N'33253636', N'upload/1333963445546.gif', N'杭州四季青广场3号', N'hdhffd', CAST(0x0000A6EF017E80BA AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (4, N'xwxxmx', N'xwxxmx', N'吴江', N'女', N'2012-03-14', N'609577616', N'jrjtr@163.com', N'34437754', N'215323262', N'upload/1333963661093.jpg', N'上海浦东区22号', N'gfdhth', CAST(0x0000A6EF017E80BB AS DateTime), N'是')
SET IDENTITY_INSERT [dbo].[yonghuzhuce] OFF
/****** Object:  Table [dbo].[xinwentongzhi]    Script Date: 01/08/2017 16:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xinwentongzhi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[biaoti] [varchar](300) NULL,
	[leibie] [varchar](50) NULL,
	[neirong] [text] NULL,
	[tianjiaren] [varchar](50) NULL,
	[shouyetupian] [varchar](50) NULL,
	[dianjilv] [int] NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[xinwentongzhi] ON
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (1, N'市消保委突击检查快递业', N'业务介绍', N'<DIV id=zoom>
<TABLE align=center>
<TBODY>
<TR>
<TD><IMG src="http://www.wenzhou.gov.cn/picture/0/110223060703169.jpg" border=0></TD></TR></TBODY></TABLE><!--<$[信息内容]>begin--><!--ZJEG_RSS.content.begin-->
<META name=ContentStart>
<P align=center>　　　<FONT face=楷体_GB2312 color=#004080>快递时被摔坏的酒杯。</FONT></P>
<P>　　快递6只酒杯，收到后有5只是摔坏的。近日，市消保委联合邮政、工商、物价等部门及媒体深入快递业进行明察暗访，发现我市部分快递企业在整理快件时所采用的方式已近“暴力”。 </P>
<P>　　<STRONG>投诉</STRONG></P>
<P><STRONG>　　去年较2009年增30.8%</STRONG></P>
<P>　　去年8月，新《邮政法》实施后，快递行业门槛提高，经营快递需先取得《快递业务经营许可证》。从此，快递业进入洗牌阶段。据市邮政部门工作人员介绍，去年8月前，我市有快递企业100多户，洗牌后取得经营许可的快递企业目前只有60多户。</P>
<P>　　尽管如此，快递投诉却未减反增。市工商局“12315”中心提供的数据显示，去年，该中心共接到快递投诉527起，较2009年的403起增加30.8%。今年1月1日以来，我市已接到快递投诉61起。消费者在投诉时反映最多的是，快递过程中物品丢失、缺少、损坏，到达时间延误，不履行赔偿责任或赔偿不合理等。</P>
<P>　　好端端的物品在快递时为什么会损坏、丢失？</P>
<P>　<STRONG>　暗访</STRONG></P>
<P><STRONG>　　快递分区几乎靠扔</STRONG></P>
<P>　　2月17日，市消保委就此组织工作人员，以消费者的身份深入市区几家快递企业进行暗访。</P>
<P>　　在圆通速递温州分公司，参与暗访的工作人员以寄件名义顺利进入快件分流操作台。据他们描述，当时该点的几名工人正将快件进行分类，场景挺“暴力”。看过快递单后，工人们随手就将快件往摆放在四周的半封闭铁笼中扔。铁笼按区域摆放，离工人远的有6米多，近的也有2米。因为熟练，工人们很少将快件丢出笼外。</P>
<P>　　在顺丰速递温州分公司，参与暗访的工作人员试图进入操作台被拒绝，只能通过寄件来侧面测试是否存在“暴力”分拣。他们从这里寄出一只花瓶和一部手机，一天后，花瓶和手机完好无损地到达收件人手中。</P>
<P>　　在韵达快递温州分公司，参与暗访的工作人员采取同样的方法，从这里寄出6只葡萄酒高脚杯。受理业务后，收件员特别在杯子内外加了报纸进行保护。但是，杯子被送到苍南龙港后，仍被摔坏了5只。受理此业务的业务员感叹，自己虽然做到位，但是快递环节很多，不知道在哪会被“暴力”，真是防不胜防。</P>
<P>　<STRONG>　明察</STRONG></P>
<P><STRONG>　　管理疏忽快件易被偷</STRONG></P>
<P>　　2月22日下午，市消保委就此联合邮政、工商、物价等部门对位于市区南白象、汤家桥的快递企业进行突击检查。记者随一组执法人员前往南白象。</P>
<P>　　在圆通，大门敞开，近千平方米的快件储藏库中竟无一人，检查组进去约5分钟后才有一名工作人员出来。记者问及为何管理如此疏忽，这人解释，下午人少，只有两个人在看管仓库，到晚上才会来人对快件进行分流。</P>
<P>　　在韵达，执法人员直接拿出被摔坏的酒杯讨说法。该快递企业负责人看过快递单后，自己找出了问题——单上的寄件地址咋是“浙江某某科技有限公司”？收件员解释，是他不小心将消费者的单子弄丢了，所以就用了一张用过的单子填写了原先的信息。至于，为什么杯子会被摔坏，韵达快递解释，他们已经很小心，可能是收件方出了问题。对此，他们表示愿意赔偿。</P>
<P>　　接下来，市消保委将召集相关快递企业就存在的问题进行座谈。（记者 曾云毕）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end--></DIV>', N'hsg', N'upload/1317085910921.jpg', 97, CAST(0x0000A6F000ACCBE5 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (2, N'快递业务旺季服务保障工作形成常态机制', N'业务介绍', N'&nbsp;&nbsp;&nbsp;为了科学安排快递业务旺季期间的服务保障工作，确保服务质量，维护消费者合法权益，国家邮政局近日出台《关于做好快递业务旺季服务保障工作的意见》，由此，快递业务旺季服务的保障工作有了常态监管机制。<BR>　&nbsp; 国家邮政局有关人士表示，出台该《意见》，一是要建立健全快递服务保障应急机制，提高快递业务旺季的应对能力；二是要建立科学合理的分配和市场调节机制，有效缓解快递业务旺季的压力；三是建立完善业务量监测预警和信息沟通制度，加强快递业务旺季的协调保障工作；四是制定符合行业实际情况的具体措施，指导快递业务旺季的运营生产。 <BR>　《意见》对在快递业务旺季期间邮政管理部门、快递行业协会和快递企业的工作进行了详细安排。《意见》指出，快递业务旺季期间，邮政管理部门要做到提早安排、科学预测、加强宣传引导、强化监督指导、严格依法监管、保障信息畅通；快递协会要认真组织贯彻落实、加强沟通协调、实行市场调节、加强行业自律，同时要做好支撑服务；快递企业要落实责任制度、加强组织调度、建立应对机制、依法实行停止经营报告制度、有序安排员工休假、建立信息报告制度。<BR>　《意见》提出要建立快递业务旺季期间保障服务的应急管理机制。各地邮政管理部门要指导快递企业按照邮政业应急预案管理规定，加强和完善应急预案，建立快递业务旺季期间突发事件应急响应机制，出现突发事件及时启动应急响应，采取有效措施妥善处置，控制事态发展，并及时向当地邮政管理部门和国家有关部门报告；各地快递协会要加强组织企业间的沟通协调，建立资源互补、协调作业的工作机制。发生突发事件时，协调企业相互配合、通力合作、集中力量做好应对工作；各企业在快递业务旺季期间，遇到恶劣天气和突发事件影响时，要通过企业官网及时发布网络预警以及服务变动信息，向用户做好因天气等原因影响快件运输造成延误的解释工作。要千方百计加大运力配置和快件疏导，落实各项安全防范措施，保障干线运输的安全畅通，防止出现快件严重积压、滚存问题。<BR>　 为了统一指挥部署和加强快递业务旺季服务的领导，国家邮政局成立了快递业务旺季服务保障工作领导小组，并设立专门的办公室，负责组织、指挥、协调全国快递业务旺季服务保障工作，及时协调解决工作中出现的各种问题。各省、自治区、直辖市邮政管理局设置相应机构，负责组织、指挥、协调本辖区快递业务旺季服务保障工作。', N'hsg', N'upload/1317086069593.jpg', 21, CAST(0x0000A6F000ACCBE7 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (3, N'国庆期间快递不放假 收件地址最好填家庭住址', N'业务介绍', N'&nbsp;&nbsp;&nbsp; 近日，多家快递企业表示，中秋、国庆期间，快递企业都正常派件、收件，也不会上浮运费，这对喜欢网购的市民来说无疑是一个利好消息。<BR>　&nbsp; 记者从申通、圆通、韵达等多家快递公司了解到，今年国庆期间快递公司均不放假，正常营业。采访中，申通工作人员告诉我们，以往国庆节期间快递公司的业务都会暂停开展或者半营业状态，节后给快递公司造成很大压力，市民投诉增多，所以总公司要求长假不休息。<BR>　　记者了解到，虽然快递公司国庆不休息，但运力也有所下降，国庆头3天速度或受影响。快递公司负责人也坦言，大部分快递公司都有员工请假，至少10月1日至3日派件速度上将受到影响，一般都要等4日起才恢复正常业务。<BR>因此，建议有需要快递的市民，为保险起见，尽量避开国庆头三天。由于大多数单位都会放假，如果市民的邮件地址写的是单位地址，投递邮件恐怕会存在滞留。建议大家收件地址最好填写家庭住址。（缪克梯）<BR>', N'hsg', N'upload/1317086056687.jpg', 5, CAST(0x0000A6F000ACCBEC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (4, N'年底网购高峰来临 快递业提前迎“春运”', N'业务介绍', N'<P>&nbsp;&nbsp;&nbsp; 进入农历11月以来，喜欢网购的买家们发现，快递速度明显变慢，以前隔天能到的包裹现在要多等上一两天，距离远的话时间就更长了，等上一周也是常事。据悉，年底网购高峰来临，快递公司提前迎来了“网络春运”。</P>
<P>&nbsp;&nbsp;&nbsp; 今天上午，笔者今天从龙港镇多家快递公司了解到，从上个月开始，由于圣诞、元旦、春节等节日接踵而至，快件数量激增，各家快递公司因突然收到太多快件不能按时发送，一些快递公司还存在“爆仓”的情况。在一家快递公司的门市部里，笔者看到店内堆放着大量货物等着派送。工作人员说，年底到了，购物网站的促销活动成了快递“爆仓”的导火索，年底网购高峰来临。给快递业带来很大压力。工作人员介绍，虽然现在店里已有30多名快递员，但大伙还是忙得不可开交。另外，湖南、贵州等地的冰冻天气，也使得物流货运在路途上有所耽搁，延误了快件派送的时间。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 笔者从一些购物网站看到，为了能让货物及时送抵，网络店家也是提醒消费者尽早下单，预留出充足的时间，避开快递拥堵。（通讯员 方崇杰 高寅寅)</P>', N'hsg', N'upload/1317085936937.jpg', 4, CAST(0x0000A6F000ACCBF1 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (5, N'“夺命快递"调查:至少4家快递公司送“毒快递”', N'业务介绍', N'<P align=center><IMG id=24447996 alt=荆门熊兴化工有限公司内存放的氟乙酸甲酯。（央视截图） src="http://images.china.cn/attachement/jpg/site1000/20131223/d02788e9b33e1421870b03.jpg" md5=""></P>
<P class=pictext align=center>荆门熊兴化工有限公司内存放的氟乙酸甲酯。（央视截图）</P>
<P align=center><IMG id=24447997 alt=荆门熊兴化工有限公司氟化分厂的寄送快递登记表明，企业曾20多次用快递寄送样品。（央视截图） src="http://images.china.cn/attachement/jpg/site1000/20131223/d02788e9b33e1421870b04.jpg" md5=""></P>
<P style="TEXT-ALIGN: center; MARGIN: 0px 3px 15px; TEXT-INDENT: 30px" align=center><FONT color=#333399>荆门熊兴化工有限公司氟化分厂的寄送快递登记表明，企业曾20多次用快递寄送样品。（央视截图）</FONT></P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">山东“夺命快递”造成1死9伤的悲剧，涉事有毒液体氟乙酸甲酯寄出方湖北荆门熊兴化工有限公司记录显示，该公司通过快递寄送样品超过20次，快递公司也不止圆通一家，还包括申通、韵达、德邦等。针对“夺命快递”事件，国家邮政局12月22日宣布在全国范围内开展收寄验视专项检查。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px"><STRONG>调查</STRONG></P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px"><STRONG>企业称只快递过3次</STRONG></P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">在山东造成1死9伤的“夺命快递”是从湖北荆门沙洋县的荆门熊兴化工有限公司寄出的。该公司副总经理黄胜勇昨天接受采访时称，只有3次是确定通过快递寄送样品的。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">他说，前两次寄送氟乙酸甲酯样品，他们都向圆通快递代理商出具了检测证明，并明确告知寄送的物品是化学物品。但记者要求查看样品检测证明时，黄胜勇表示，已把检测证明随样品一同邮寄给了接收方。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">对于这次邮寄样品到山东潍坊该公司有无向快递公司出具检测证明，黄胜勇含糊其辞，“到底最后这份随货通行的检测报告单附没附，不敢肯定”。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px"><STRONG>记录显示寄送20多次</STRONG></P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">湖北荆门熊兴化工有限公司氟化分厂会计田春英介绍，她8月份刚来公司的时候，找申通快递发过一次公司生产的样品，用很小的瓶盛装的。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">记者在该厂找到一个笔记本，记录了今年6月28日起氟化分厂寄送快递的登记。记录显示，今年8月31日，该厂确实用申通快递寄送过氟乙酸甲酯样品。而且通过快递寄送样品超过20次，其中包括11月底寄往山东潍坊的样品。另外，寄送样品的快递公司，也不止圆通一家，还包括申通、韵达、德邦等。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">黄胜勇说，公司人员具体经办情况，从哪个物流公司寄的，他确实不晓得。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px"><STRONG>行动</STRONG></P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px"><STRONG>专项检查快递收寄验视</STRONG></P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">国家邮政局12月22日宣布在全国范围内开展收寄验视专项检查。此次活动采取日常检查、突击检查、联合检查、明察暗访、调取监控录像记录等多种方式进行三个重点检查。一是重点检查邮政企业、快递企业是否在用户在场的情况下，当面验视交寄物品，核实是否属于国家禁止或限制寄递的物品，以及物品的名称、类别、数量等是否与寄递详情单所填写的内容一致等；二是重点检查依照国家规定需要用户提供有关书面凭证的，邮政企业、快递企业是否要求用户提供凭证原件，并进行严格核对等；三是重点检查用户拒绝验视、拒不如实填写寄递详情单、拒不提供相应书面凭证或者不按照规定出示有效身份证件的，相关企业是否不予收寄等。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">对于不执行收件验视制度，或者违反规定收寄禁限寄物品的，经查证属实，一律依据《邮政法》第七十五条规定作出严厉处罚，该停业整顿的必须停业整顿，该吊销许可的坚决给予吊销。据介绍，收寄验视制度是《邮政法》等相关法律法规明确的一项基本制度，是邮政企业、快递企业的法定责任。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px"><STRONG>观点</STRONG></P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px"><STRONG>推高成本或转嫁消费者</STRONG></P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">快递行业专家赵小敏介绍，有危险品运输资质的公司有专门的检测和运输装备，运输要求高决定了其运输价格更高。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">据了解，危险化学品的运输一般是按吨计算，不足1吨按1吨收费。样品运输选择快递而不是找专业运输公司可省下数千元运输成本。记者在淘宝上搜索查询发现，便捷式危险液体检测仪的售价为8000元到数万元不等。专业检测危险化学品的仪器价格更高。赵小敏认为，增加设备或落实验视的结果是，验货时间和人力成本明显增加，这些成本会不会转嫁给消费者，这值得观察。(记者廖丰 央视报道)</P><!--/enpcontent-->', N'hsg', N'upload/1317085922265.jpg', 91, CAST(0x0000A6F000ACCBF6 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (6, N'建议尽快制订快递服务城市收派非机动车辆技术标准', N'业务介绍', N'&nbsp;在今年的两会上，全国政协委员、国家邮政局局长马军胜向大会提交了关于尽快制订全国快递服务城市收、派非机动车辆技术标准的提案。 
<DIV><BR>　　马军胜委员认为，快递业务是融合交通运输和信息业的复合型现代服务业，是国民经济发展的重要服务业。2010年我国快递业务日处理量突破1000万件，成为继美国和日本之后世界第三快递大国，且每年还以GDP增速3倍的速度增长，发展潜力巨大。</DIV>
<DIV><BR>　　2009年出台的《国务院关于印发物流业调整和振兴规划的通知》，对包括快递在内的物流发展提出了要求，其中针对“城市配送工程”规定：“加快建设城市物流配送项目，鼓励专业运输企业开展城市配送，提高城市配送的专业化水平，解决城市快递、配送车辆进城通行、停靠和装卸作业问题，完善城市物流配送网络。”针对“物流标准和技术推广工程”规定：“加快对现有仓储、转运和运输工具的标准化改造，鼓励企业采用标准化的物流设施和设备，实现物流设施、设备的标准化。”</DIV>
<DIV><BR>　　马军胜表示，揽收、派送是快递业务的主要运作环节，也是消费者体验服务最直接的工作环节。目前，我国城市快递的揽收和派送主要依靠两轮、三轮非机动车辆作业。这种生产作业模式的最大优点是环保，占用城市道路面积少；其次是购置、运行、维护成本低。但不足的是缺乏固定装载快件的容器，容易发生快件损毁、雨淋等问题，特别是快递员常需短时间离车去收派快件，车辆上的快件极易发生盗窃、丢失等安全问题，严重影响了快递服务的质量，消费者对此意见甚多。有些企业为了解决快件安全问题，自行对两轮、三轮非机动车进行改装，安装了存放快件的容器。虽然一定程度上解决了快件安全问题，但有的尺寸过高过宽，往往不符合城市交通安全的要求；也有的非机动车辆外观、质材不符城市环境的要求；还有的改装质量差，达不到防盗、防丢、防雨的要求。</DIV>', N'hsg', NULL, 20, CAST(0x0000A6F000ACCBF9 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (7, N'邮政业消费者申诉情况的通告', N'业务介绍', N'&nbsp;12月，国家邮政局和各省（区、市）邮政管理局通过“12305”邮政行业消费者申诉电话和国家邮政局网站共受理消费者申诉8369件，比上月增加5081件，增长154.5％；答复咨询394件，比上月增加68件，增长20.9％。申诉中涉及邮政服务问题的930件，比上月增加360件，增长63.2％，占总申诉量的11.1％；涉及快递业务问题的7439件，比上月增加4721件，增长173.7％，占总申诉量的88.9％。已处理申诉中有效申诉（确定企业责任的）1980件，比上月增加572 件，增长40.6％，占总申诉量的23.7％。经调解消费者申诉已全部妥善处理，为消费者挽回经济损失35.4万元，消费者对申诉处理满意率为94.7％。 
<DIV><BR>　　2010年全年共受理消费者申诉32123件，比2009年增加12845件，增长66.6％；答复咨询3133件。申诉中涉及邮政服务问题的5504件，同比增加681件，增长14.1％，占总申诉量的17.1％；涉及快递业务问题的26619件，同比增加12164件，增长84.2％，占总申诉量的82.9％。全年有效申诉12014件，同比增加5587 件，增长86.9％，占总申诉量的37.4％。消费者申诉全部妥善处理，全年为消费者挽回经济损失261.1万元，同比增加115.8万元。消费者对申诉处理满意率全年平均为91.5％。</DIV>', N'hsg', NULL, 80, CAST(0x0000A6F000ACCBFC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (8, N'黄金周快递不“打烊”（图）', N'业务介绍', N'<DIV align=center>
<DIV align=center>&nbsp;</DIV>
<DIV align=center><SPAN><IMG id=no_img height=406 src="http://pic2.66wz.com/0/10/64/89/10648981_975973.jpg" width=610 border=0></SPAN></DIV>
<DIV align=center>&nbsp;</DIV></DIV>
<P><!--epe-->&nbsp;&nbsp;&nbsp;&nbsp; 苍南新闻网10月7日消息：为了给用户提供更好的服务，在中秋和国庆假期，我县多家快递公司均正常派件，让市民充分享受节日网购乐趣。（李士明/摄）</P>', N'hsg', NULL, 59, CAST(0x0000A6F000ACCBFD AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (9, N'快递信息技术部深入网点公司提供培训活动', N'业务介绍', N'&nbsp;&nbsp; 近日，申通快递IT培训班石家庄培训在燕春饭店顺利举行。上海总公司信息技术部<FONT face=Verdana>罗淑贞</FONT>和龚海明，申通华北区经理沈忠平，石家庄中转部经理马吉芳，石家庄联合申通总经理李青，河北地区部分网点负责人、网管、客服、财务等，共80余人参加培训。<FONT face=Verdana>罗淑贞</FONT>、龚海明老师细致讲解了集群E3、客服OA、淘宝E3、有偿派送、巴枪扫描、称重系统、车辆GPS等内容，耐心回答企业代表提出的问题。与会人员专心听讲，认真做笔录，并与培训老师进行互动。 
<DIV>&nbsp;&nbsp;&nbsp; 此次培训涉及内容广，讲解深刻细致，释解多处疑问，有效指导了网点网络系统的正确使用，促进了公司的规范化运营。与会人员反应积极热烈，纷纷表示培训有力地指导一线工作的开展，同时深刻认识到培训学习的重要性，真诚希望上海总公司组织更多这样的培训。</DIV>
<DIV>&nbsp;</DIV>
<DIV align=center><IMG src="http://www.sto.cn/UploadFiles/201131714345510.jpg" border=0></DIV>', N'hsg', NULL, 74, CAST(0x0000A6F000ACCC00 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (10, N'我市提出在围垦中创新地下空间开发建设模式', N'业务介绍', N'&nbsp;&nbsp;&nbsp; 围海造地的同时，也给地下空间“留一手”。记者1月31日从市沿海办获悉，《基于地下空间利用的围海造地开发建设模式研究》通过评审，将有利于我市在海涂围垦中创新造地模式，提高土地利用率。 
<P>　　据介绍，一般的围海造地建设方式，需经过吹填、软基处理，成为净地出让，再根据规划和建设方案，“挖”一个地下空间出来。而此次市沿海办研究的新型围海造地方式，则是从造地初期就结合地下空间的规划布局，利用围垦出的低地直接进行地下空间的开发建设。这一做法，减少吹填的时间和成本，避免二次开挖及吹填土导致的海洋生态破坏，同时加快围垦造地的建设速度。</P>
<P>　　在近日的评审会上，来自浙江大学、河海大学的专家和市发改、住建、水利、国土、海洋与渔业部门对该课题进行了探讨和评审，普遍认为地下空间的利用与产业集群、防灾减灾、市政道路交通设施、人防工程以及区域海洋环境密切相关，是拓展生存空间，实现可持续发展的重要途径。基于地下空间利用这一围海造地新理念具有明显的创新性和前瞻性，可尽快组织开展试点工作。（记者 张佳玮）</P>', N'hsg', N'upload/1317085910921.jpg', 22, CAST(0x0000A6F4013D2E70 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (11, N'2月份我县用电量快速增长 节能降耗压力巨大', N'业务介绍', N'&nbsp;&nbsp;&nbsp; 3月8日消息：据县统计局消息，今年以来，我县用电量呈现快速增长态势，1-2月全社会用电量6.13亿度，增长25.8%，比全市平均水平高出10.5个百分点。另据规模以上工业统计显示，1-2月产值增幅仅18%，节能降耗压力巨大。
<P>&nbsp;&nbsp;&nbsp; 分产业看，第一产业平稳增长，第二、三产业快速增长。其中第一产业用电量为200.3万千瓦时，增长7.8%，增幅比上月提高9.8个百分点；第二产业用电量3.86亿元，同比增长21.7%，比上月回升了134个百分点；第三产业用电量为0.54亿千瓦时，增长31.2%，较上月回升了45个百分点。三次产业的用电比例由去年同期的0.5：88.0：11.4调整为今年的0.5：87.3：12.2。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 工业用电是拉动全社会用电快速增长的主要因素。1-2月全县工业用电量为3.82亿千瓦时，同比增长21.6%，占全社会用电的62.3%，对用电增长的贡献率为54%，拉动全社会用电增长14个百分点。</P>
<P>&nbsp;&nbsp;&nbsp; 春节长假及低温天气使居民生活用电强劲增长。1-2月份我县城乡居民生活用电量为1.71亿千瓦时，同比增长34.6%，增幅比上月提高45个百分点，居民生活用电量占全社会用电量的比重由去年同期的26%上升至28%。</P>
<P>&nbsp;&nbsp;&nbsp; 我县电力的能耗已经占到全社会能耗的80%，按照正常的经济发展规律，电力消费增幅超过15%，单位GDP能耗就会不降反升。目前电力消费增幅达到25.8%，需引起有关领导和部门高度重视。</P>', N'hsg', N'upload/1317086069593.jpg', 87, CAST(0x0000A6F4013D2E74 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (12, N'全县财政地税工作会议召开', N'业务介绍', N'&nbsp;&nbsp;&nbsp; 2月23日消息：2月22日下午，全县财政地税工作会议召开。会议提出2011年我县财政地税工作将紧紧围绕“后发崛起、全面跨越”发展战略，按照“持续、平稳、健康，支撑、保障、引导”的“十二字”工作方针，认真履行好“生财有道、聚财有法、用财有度、理财有方、管财有效”的五大财税职能，计划实现全县财政总收入27.88亿元，增长15%的目标。县长董庆华在会上做重要讲话。县领导蓝德超、丁振俊、冯兴钱等参加会议。市财政局副局长朱定钧出席会议并就下一步苍南财政地税工作提出要求。
<P>&nbsp;&nbsp;&nbsp; 据了解，在过去的五年中，我县财政地税收入得到迅速增长，财政支出结构得到逐步优化，财税管理水平得到持续提高，财税队伍建设得到不断加强。据统计，全县财政总收入从2005年的103017万元上升至2010年的242468万元，增长2.4倍，年均增长18.6%；地方财政收入从2005年的58018万元上升至2010年的149518万元，增长2.6倍，年均增长20.8%。全县地税部门组织收入从2005年的78547万元上升至2010年的210980万元，增长2.7倍，年均增长21.8%。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 会议提出，2011年全县财政总收入计划278800万元，增长15.0%，全县地税税收收入（不含契、耕两税）124200万元，增长15.0%；全县一般预算支出298000万元，增长6.0%。要着力抓好“三位一体”财政组织架构、财政资金申拨提速、专项资金整合优化、财政管理工作绩效、鼓励引导促进消费、 “同心汇聚”服务品牌、地税征管机制完善、地税税源管理提升、融资平台建设、干部队伍素质提高等十大工程，倾注全力履行好“生财、聚财、用财、理财、管财”五大职能，在推进我县转型发展过程中发挥好主力军作用。</P>
<P>&nbsp;&nbsp;&nbsp; 会上，董庆华充分肯定去年财政地税工作所取得的成效，认为我县财政地税工作生财有道、理财有方、用财有保，有力地支持了我县地方经济社会发展。并代表县委县政府对全体财政地税干部长期以来所作出的贡献表示衷心感谢。2011年是“十二五”开局之年，如何做好新形势下的财政地税工作意义重大。他要求全体财政地税干部要集各方之智、聚万众之心、举全县之力，攻坚克难，再创佳绩，确保顺利完成今年的各项目标任务。要切实做好生财聚财文章，实现税收收入持续增长，为我县大投资大建设营造良好发展环境。同时，要做好用财理财管财文章，全面提高财政管理水平。他希望财政地税部门要勇于当好政府的参谋，严格审核，在用财时敢于说“不”，切实把钱用在刀口上，发挥资金的最大效益，切实当好家理好财。要加强自身建设，努力建设一支想干事、能干事、干成事的财税干部队伍，圆满完成全年工作任务。之后，他还就各乡镇在区划调整时如何严格遵守财经纪律，加强国有资产规范管理等多项工作提出要求。</P>
<P>&nbsp;&nbsp;&nbsp; 县财政地税局局长徐象广在会上作全县财政地税工作报告，会议还表彰了先进。（记者 冯瑞元）</P>', N'hsg', N'upload/1317086056687.jpg', 39, CAST(0x0000A6F4013D2E75 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (13, N'省少工委五届五次全委（扩大）会在温召开', N'业务介绍', N'&nbsp;&nbsp;&nbsp; 以统筹城乡团建为统揽，我市已建成50多个乡镇少工委组织，少先队工作向基层延伸并不断夯实。这是记者从日前在温召开的浙江省少工委五届五次全委（扩大）会上获悉的。 
<P>　　近年来，我市把少先队工作作为分层教育的源头和基础加以重点落实与推进，着力构筑全程贯通、逐级深化、效益递增的团队分层教育工作体系。针对农村少先队工作中的薄弱环节，积极发挥乡镇中心校的辐射带动作用，组织开展“手拉手”、“争当低碳小卫士”等一系列切实符合农村少先队组织现状、适合农村少年儿童的活动。根据社区的地域性和社会化特点，完善社区志愿辅导员队伍建设，整合调动社区内的各种资源，建立红领巾书屋、红领巾绿化、雏鹰健身小道、社区少先队文化墙等少先队活动阵地，引导少年儿童参与社区服务和建设。通过城乡联动、送课上门和聘任少先队志愿辅导员等方式，实施全市辅导员素质提升工程。</P>
<P>　　市委副书记朱贤良出席会议并致辞。他说，温州市委、市政府历来高度重视少先队工作，去年通过开展争当“四好少年”主题教育活动、少年儿童平安行动、少先队员低碳行动、“雏鹰争章”等一批主题鲜明、深受少年儿童欢迎的重要活动，不断加强未成年人思想道德建设，少先队事业取得了长足进步。全市各级共青团组织、教育行政部门和少先队组织将以此次会议为契机，深刻领会会议精神，学习兄弟城市的先进经验，取长补短，不断提高我市少先队工作的整体水平，实现新跨越。</P>
<P>　　省教育厅副厅长、省少工委副主任韩平，团省委副书记、省少工委主任苗伟伦等出席会议并讲话。（记者 夏晶莹）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/1317085936937.jpg', 52, CAST(0x0000A6F4013D2E77 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (14, N'朱贤良要求全面推进反腐倡廉建设', N'业务介绍', N'<P>　　近日，市委副书记朱贤良率考核组到龙湾，对推进惩防体系建设和落实党风廉政建设责任制情况进行检查。朱贤良希望龙湾切实把党风廉政建设和反腐败斗争放在更加突出的位置，常抓不懈、紧抓不放，全面推进反腐倡廉各项工作，努力以优良的党风促政风带民风，为顺利推进全区和全市的改革开放与现代化建设事业提供有力的保障。 </P>
<P>　　近几年来，龙湾区委、区政府紧紧围绕市委、市政府关于反腐倡廉建设的总体部署，按照从严治党、从严治政的要求，认真落实党风廉政建设责任制，扎实推进惩防体系建设，突出抓好党风教育、纠风治乱、案件查处、惩防并举、制度建设等，党风廉政建设和反腐败各项工作都取得了新的成效。</P>
<P>　　朱贤良充分肯定了龙湾反腐倡廉建设所取得的成绩。同时，他指出，党风廉政建设和反腐败斗争充满复杂性和艰巨性，是一项长期的工程。要不断增强责任感、紧迫感和使命感，从思想上更加重视，工作上更加主动，责任上更加落实，坚持不懈地推进党风廉政建设和反腐败斗争。要坚持以推进惩防体系建设和落实党风廉政建设责任制为主线，进一步增强思想教育的时效性，健全完善各项制度建设，不断强化监督，坚持在改革中促进反腐倡廉工作不断取得新成绩。要把反腐倡廉工作与改革发展稳定各项任务更加紧密地结合，不断优化党风政风和发展环境，为促进经济社会转型发展作出贡献。</P></FOUNDER-CONTENT>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/1317085922265.jpg', 7, CAST(0x0000A6F4013D2E7A AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (15, N'赵一德出席维多利亚—温州贸易投资洽谈会并致辞', N'业务介绍', N'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 致力推动温州与澳大利亚维多利亚州之间的经贸往来，拓展温州在澳乃至整个南太平洋的经贸交流空间。3月29日，维多利亚——温州贸易投资洽谈会在维多利亚州墨尔本市举行。“墨尔本温州经贸日”活动期间，双方签署总计价值3.3亿美元的合约。市委副书记、市长赵一德出席洽谈会并致辞。 
<P>　　维多利亚州位于澳大利亚大陆东南端，素有“花园之州”的美誉。当天的洽谈会，是两地政府共同举办“墨尔本温州经贸日”活动的重头戏。格瑞特新能源有限公司、 利尼斯洁具有限公司、松日电器有限公司、锦芳对外贸易有限公司和泰康电气有限公司等我市5家企业与澳方共达成3755万美元进出口合约，涉及新能源、矿产资源开发等，加上竞日光伏科技公司、百润投资有限公司与外商在会前签署的3亿美元合约，“墨尔本温州经贸日”活动期间，双方签署总计价值3.3亿美元的合约。</P>
<P>　　赵一德说，中澳虽然分处南北半球，但两地人民的友好交往源远流长。去年，温州与澳大利亚进出口额已接近3亿美元。此次活动，将成为温州与维多利亚洲开启经贸合作发展的新起点，成为两地人民加强友好往来的新开端。他希望温州与维多利亚州以及墨尔本市在经贸、科技、教育等方面加强合作，在城市规划和城市化推进等方面加强沟通，在文化、旅游等方面扩大合作，同时，也希望两地间的行业协会、商会深化合作交流，实现共同发展。</P>
<P>　　据了解，参与洽谈和项目签约的企业家群体中，有着“总经理”、“副总裁”等头衔的年轻面孔很是引人注目，“利尼斯”的涂斌峰、“锦芳”的程沁芳、“鹤鸣”的黄祺祺、“百润”的张俊晖都是70后或80后的青年企业家。看到他们挑大梁、担大任，赵一德十分高兴。他说，这些70后、80后的青年企业家，是今天温州企业界的生力军，是明天温州企业界的主力军，任重道远，前景广阔，他勉励他们走得稳、走得好、走得快。</P>
<P>　　洽谈会上，市外经贸局与澳大利亚雇主工商会签署了“合作备忘录”，双方将开展长期投资和贸易信息的交流，为两地企业在两国间的商务活动提供服务，协助进行投资和贸易活动。向双方组织的贸易、投资团体提供协助并与其开展合作，定期就合作情况交换意见，商讨推进合作方式等。&nbsp;（记者 吴勇）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', NULL, 87, CAST(0x0000A6F4013D2E7D AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (16, N'鹿城藤桥四个农房集聚点集体开建', N'业务介绍', N'&nbsp;&nbsp;&nbsp; 6月27日上午，总投资11亿元、总建筑面积约21.7万平方米的鹿城区藤桥镇南岸青藤家园、北岸藤园景苑、坎上西都锦园、潮埠西都·景秀居四个农房集聚点，同时开工建设。建成后可提供1894套高品质小区房，3年内有望让藤桥近千户农民“上楼”。 
<P>　　6月27日集中开工的4个农房集聚点项目，为该镇第一批农房集聚建设项目。在具体实施过程中，藤桥镇拿出全镇最好的地块，几易其稿优化设计方案，降低建设成本，在套型设计上分别设计了小户、中户、大户型，满足不同农户对象的实际需求，并在成本控制范围内尽量突出注重小区品质，确保使广大农民不仅能住得起、还能住得满意。</P>
<P>　　藤桥镇副镇长肖达统介绍说，该镇农房集聚建设的配套工作也已全面启动，相关的农房集聚建设宅基地置换方案将于近期出台，已基本明确三种置换方式：农户合法宅基地房屋占地面积置换三倍农房集聚改造新房面积；农户房屋合法产权面积一比一置换农房集聚改造新房面积；按户人口数人均不超过50平方米置换农房集聚改造新房面积。藤桥镇农民有置换意向的可选择这三种中的任意一种进行置换。根据近期对该镇几个村的模拟置换意愿调查统计，农民意愿置换率达到50%左右。目前，4个农房集聚点楼盘模型已全部制作完成，一个月内就可向农民开放，农户宅基地置换意向书也将于近期全面启动签订。（陈熠 缪小霞）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', NULL, 34, CAST(0x0000A6F4013D2E82 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (17, N'泰顺县加快打造“中国第五大国石”步伐', N'业务介绍', N'&nbsp;&nbsp;&nbsp;&nbsp; 温州都市报7月6日刊登《“黄金”为何只卖出稻草价》一文后，副省长、市委书记陈德荣作出批示，要求泰顺县高度重视泰顺石的生态文化资源价值，很好地加以保护、开发、利用，成为泰顺的一张金名片。7月17日，泰顺方面表示，目前已暂停矿区无序开采，20日将派驻产业园管委会，并与央企合作尽快把泰顺石打造成“中国第五大国石”。 
<P>　　泰顺石矿区位于仕阳镇龟湖办事处龟湖村，理论储量有1亿吨，被称为“世界叶腊石之都”。记者近日在现场看到，矿区入口处整齐停放着一排开采设备，整个矿区不见一人，四周静悄悄。</P>
<P>　　浙江龟湖矿业有限公司总经理艾先有说，目前该公司共有22支开采队，400多名矿工都是当地村民，长期以来因缺乏用工自主权，导致村民无序开采造成资源极大浪费，同时存在严重安全隐患。最近按照县里要求，已经全面封矿整顿，同时改变以往一刀切的开采方式，根据矿石不同质量制定了分层、分类科学开采方案，以便从源头上保护好泰顺石资源，实行可持续发展。</P>
<P>　　市领导批示后第3天，仕阳镇在区划调整后召开的首届人代会上，将启动泰顺石工业经济转型列入《政府工作报告》，提出要严厉打击非法采矿行为，整合、规范泰顺石开采加工，培育1家到2家泰顺石雕刻企业，努力提高产品附加值。</P>
<P>　　“由于历史原因，我们一直没有利用好泰顺石这个宝贝，绝大部分被磨碎用于陶瓷等工业生产原料，确实把黄金卖出了稻草价，陈书记的批示是提升泰顺石生态文化资源价值的有利契机。”仕阳镇党委书记王仁旺说，目前县里已经成立泰顺石文化创意项目前期工作领导小组，同时还设立龟湖叶腊石产业园县级功能区管委会，定于7月20日挂牌进驻。其中一位专职副主任正在向全县公开选拔，主抓产业园的开发建设事务，其余7名工作人员已经调剂到位。投资上亿元的龟湖至仕阳公路已经着手动工，届时将告别泰顺石运输难、污染周边环境等问题。</P>
<P>　　接到市领导批示后，泰顺县主要负责人再次赴京与中国工艺美术集团洽谈，基本达成泰顺石合作开采加工意向，相关细节事宜正在进一步协商中。双方计划成立泰顺石文化创意园，将其列入省政府特扶重点项目，同时建设泰顺石文化创意基地、温州文化旅游集散基地、中国南方工艺美术品集散基地，大力开展雕刻人才引进工作，把泰顺石打造成继福建寿山石、浙江青田石、昌化鸡血石、内蒙古巴林石之后的“中国第五大国石”。（叶锡环 赵亮）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', NULL, 28, CAST(0x0000A6F4013D2E85 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (18, N'国家“十一五”人口规划督评组来温', N'业务介绍', N'&nbsp;&nbsp;&nbsp;&nbsp; 11月24日，国家人口和计划生育委员会副主任王培安率督评组来温，对我市人口发展“十一五”规划执行情况进行督查评估。市委副书记、市长赵一德就“十一五”期间我市的人口计生工作向督查组作了汇报。 
<P>　　“十一五”期间，我市加大财力投入，完善以人为本的保障机制，五年来，58万人享受到利益导向政策带来的实惠，金额达1.3亿元。市政府还先后投入五千万元，重点抓好县乡镇计生指导服务站的改造提升。在实施全省“两免”，即免费婚前医学检查，免费孕前优生检测的基础上，增加了已婚育龄妇女免费健康检查、对实行计划生育家庭患唇腭裂等疾病患儿每年安排一批予以免费诊治等四项措施。另外，在流动人口的管理上，构建起来内外“一盘棋”工作格局。预计全市期末总人口为785万人，自然增长率控制在8％。以内，总和生育率持续保持在1.6的低生育水平，计划生育率保持在85%左右。</P>
<P>　　赵一德在会上就“十一五”期间我市的人口计生工作向督查组作了介绍。他说，“十一五”时期的五年，是我市人口计生事业整体推进速度最快、成效最明显的五年。五年来，按照国家人口计生委的总体部署，在省人口计生委的精心指导下，通过强化组织领导、切实加大投入、规范执法行为、加强流口管理、坚持中心下移等方法，立足实际、克难攻坚、开拓创新，顺利完成“十一五”规划主要目标任务。同时，他还指出，目前，温州的计生工作还存在着低生育水平依然面临反弹风险、性别比偏离正常区间、基层基础还十分薄弱等难题，并向督评组介绍了解决这些问题的措施。</P>
<P>　　王培安对“十一五”期间我市的人口计生工作给予了充分肯定。他说，温州的人口计生工作思路清楚，重点突出，措施有力，成效显著。同时他也指出温州稳定低生育水平任务还相当艰巨，出生人口性别不平衡的矛盾还十分突出，流动人口的服务管理仍然是工作难点。对此，他提出三点建议：坚持计划生育的基本国策不动摇，坚持好的工作思路和方法不动摇，坚持一把手负总责，一票否决，层层落实目标责任制不动摇；坚持不懈抓紧抓实基层基础工作；强化三个注重，更加注重利益引导，更加注重服务关怀，更加注重宣传倡导，以此来转变群众生育观念。</P>
<P>　　市领导朱贤良、葛益平、仇杨均等参加了座谈会。当天，督评组的部分成员还前往瓯海区南白象镇南白象村，对当地的人口计生工作进行了调研指导。</P>', N'hsg', NULL, 94, CAST(0x0000A6F4013D2E87 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (19, N'我市再评一批星级文明社区', N'业务介绍', N'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6月9日，记者从市文明办获悉，为进一步推进以文明城市创建为龙头的“六城联创”，我市6月10日起再开展星级文明社区评选活动，同时对前7批共272个市级文明服务示范点进行复评。 
<P>　　具备申报资格的社区，可填写《温州市星级文明社区申报表》（详见温州文明网http://www.wzwmw.com），向各县（市、区）文明办提出申报。</P>
<P>　　和以往不同的是，本次评选要求更为严格。除了要严格按照《温州市星级文明社区考核及评分细则》开展各项评选工作外，“拆围去丑”、“两拆两绿”、“违必拆、六先拆”等重点内容都将作为评选的参考内容。同时，“做富而好礼温州人”主题活动、关爱空巢老人文明志愿服务行动、关爱农民工志愿服务活动等年度精神文明建设重点工作也会纳入考核内容。（记者 尤建明）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', NULL, 67, CAST(0x0000A6F4013D2E88 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (20, N'黄寿龙对“两城示范”文明创建工作提出要求：全省领先 全市领跑', N'业务介绍', N'&nbsp;&nbsp;&nbsp; 4月5日消息：县委书记黄寿龙在日前召开的全县“两城示范”文明创建工作汇报会上要求，灵溪、龙港两地的文明创建工作要力争全省领先、全市领跑，三个月初步见效，到年底取得明显成果。县领导林万乐、戴嘉宝、黄锦耀参加会议。
<P>&nbsp;&nbsp;&nbsp; 听取汇报后，黄寿龙指出，文明创建工作作为全县生态文明建设“六大行动”的重要内容之一，必须始终保持高度重视，抓紧抓好抓出成效。灵溪、龙港两镇作为全县政治、经济、文化中心，更要带头抓好创建工作，为全县文明创建带好头、起好步。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 黄寿龙要求，文明创建要抓住重点，保证质量，加快推进。地面要打扫干净，保持环境卫生整洁；占道经营要彻底清理，维护城市秩序；户外广告要进行整容，美化市容市貌；交通秩序要科学管理，改善目前混乱拥堵状况。要积极借智借脑借力，学习先进经验，制定科学计划，向科技要管理，向制度要管理。要以群众满意不满意为根本标准，每月进行排名打分，到年底取得明显成果。</P>
<P>&nbsp;&nbsp;&nbsp; 据了解，灵溪镇目前已着力对高峰期堵车现象、垃圾死角、户外广告、占道经营、公共场所秩序等方面进行整治，完善城市管理机制，不断提升县城人居环境，努力创建省级文明县城。龙港镇主要针对群众素质进行提升，并围绕城市突出问题打响了“五大战役”，同时还提出“五大计划”和“三年规划”，着力打造全国文明城镇。（记者 叶晔）</P>', N'hsg', NULL, 16, CAST(0x0000A6F4013D2E89 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (21, N'黄荣定要求城中村（旧村）改造：规划引领 快速推进', N'业务介绍', N'<P>&nbsp;&nbsp;&nbsp; 苍南新闻网6月30日消息：6月28日，县长黄荣定在全县城中村（旧村）改造专题会议上要求，各地各部门要进一步提高认识、加强学习、周密部署，坚持规划引领和示范带动，快速推进全县城中村（旧村）改造工作，加快苍南城市化建设步伐。县委常委、副县长雷仁参加会议。</P>
<P>&nbsp;&nbsp;&nbsp; “苍南正处于城市化高速增长的时期，城中村（旧村）改造是苍南城市化建设的迫切需要。”黄荣定从人口学、地理学、经济学三个角度对城市化的定义进行了深入剖析，他说，城市化既是人口、财富、技术和服务集聚的过程，也是生活方式、生产方式、管理方式与公民意识转变的过程，城市化不仅是量的扩张，更是质的提升。全县干部要紧紧抓住苍南城市化建设的黄金机遇期，一鼓作气，趁势而上，进一步加大城中村（旧村）改造工作力度，着力打造“五纵五横”交通网，拉开城市化建设的大框架，加快苍南城市化建设步伐。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 据悉，今年我县以灵溪镇建兴片区、坝头片区、县城新区片区、龙港沿江片区等四大片区城中村改造为重点，启动城中村改造项目25个，总占地面积721亩，建筑面积138万平方米，旧村改造项目（包括土地综合整治）44个，重点农房集聚项目12个。截止5月底，已建设总户数7905户（包括城中村改造户数），新增农房集聚率3.08%，完成固定资产投资15.3亿元。</P>
<P>&nbsp;&nbsp;&nbsp; “全县城中村（旧村）改造工作坚持规划引领，明确实施重点、完善改造政策，各项工作健康有序开展，势头很好，成效明显。”黄荣定对全县城中村（旧村）改造工作予以充分肯定，他指出，各地各部门要坚持规划引领，周密部署，快速推进，把规划作为城中村（旧村）改造建设的“龙头”，注重外地先进理念与苍南实际相结合，高标准、高起点做好做实各项规划，正确处理好城中村（旧村）改造与总体规划、城中村（旧村）改造与产业发展规划、建设容积率与人民群众愿望的关系。要认真学习借鉴瓯海、龙湾、瑞安等兄弟县市区的成功经验，把城中村（旧村）改造同省委省政府部署的“千村示范万村整治”工作相结合，因村制宜做好规划，在建设资金筹措和土地利用上做文章、找出路，促进农村产业发展，提升农村的基本公共服务水平，建立健全环境和设施管理长效机制，推进农村改革事业和社会管理体制的创新发展。要抓好典型，坚持示范引路，着力打造城中村（旧村）拆迁改造工作的亮点，以点带面，积极推进，严格按照“一个城中村（旧村）改造、一个领导、一个团队、一套方案、一抓到底”的“五个一”工作要求，倒排时间表，进一步明确全县第一批重大项目责任捆绑攻坚活动的时间节点，深化督查、协调和服务工作。全县各级干部要加强学习，提高业务水平和做群众工作的能力，坚持廉洁自律，公平正义，确保全县城中村（旧村）改造工作健康有序、扎实有效地开展，为加快苍南城市化建设步伐再立新功。（记者 陈君）</P>', N'hsg', NULL, 63, CAST(0x0000A6F4013D2E8D AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (22, N'县总工会召开七届二次全委（扩大）会议', N'业务介绍', N'&nbsp;&nbsp;&nbsp; 3月6日消息：3月3日，县总工会召开七届二次全委（扩大）会议，县委副书记、政法委书记林晓峰在会上作重要讲话。
<P>&nbsp;&nbsp;&nbsp; 过去的一年来，全县各级工会在组织建设、维权帮扶、建功立业、素质提升、宣传教育等工作中努力创先争优，被授予浙江省“安康杯”竞赛先进单位和全国工会系统“五五”普法先进单位。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 林晓峰在会上要求，全县各级工会组织要积极开展多种形式的培训教育和精神文明创建活动，不断提高职工的劳动技能、业务水平和思想文化素质；要深入开展各种建功立业活动，引导广大职工进一步焕发主人翁责任感，为加快转变发展方式贡献力量；要广泛发动广大职工积极参加技术革新、技术协作和发明创造活动，争当新能手；要着力维护职工合法权益，不断完善利益协调、诉求表达、权益保障机制，特别是在工资收入、社会保障、民主政治等职工核心权益方面，更要主动、依法、科学维权，让广大职工实现体面劳动；要充分发挥工会组织贴近基层，贴近职工的优势，建立以优化困难职工帮扶中心为载体的服务体系，着力解决好职工最关注，反映最强烈问题； 要充分发展工会“大学校”作用，创新职工培训的方式、载体和制度，努力培养更多的知识型、技能型、创新型职工，为我县“十二五”发展提供智力支持和人才保证。（记者 简宁静）</P>', N'hsg', NULL, 14, CAST(0x0000A6F4013D2E8E AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (23, N'省政协老领导来苍考察 希望抢抓机遇加快发展', N'业务介绍', N'<P>&nbsp;&nbsp;&nbsp; 近日，原省政协副主席陈法文一行来到我县，参观考察了临港产业基地、江南海涂围垦工程进展和龙港镇强镇扩权政策落实情况。县领导杨成秋、尤有光陪同考察。</P>
<P>&nbsp;&nbsp;&nbsp; 陈法文一行首先来到海涂围垦东塘舥艚堤，认真听取了指挥部负责人对临港产业基地和江南海涂围垦工程进展情况的介绍。据了解，江南海涂围垦工程总长为13.1公里，围区面积4.34万亩，总投资为9.4亿元，整个工期为5年。连日来，工程指挥部会同施工单位全力奋战在施工一线，以确保工程顺利推进。预计在今年年底，围堰堤坝将全线合龙竣工。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 随后，陈法文等来到龙港行政审批中心，实地参观了各项审批工作，了解行政审批中心的日常运作情况。在听取了龙港镇关于强镇扩权各项工作开展落实情况的介绍后，老领导、老干部们表示，非常看好龙港下一轮的发展，希望龙港镇要抢抓强镇扩权的历史机遇，加快发展，全面推进城市化进程。（通讯员 方崇杰 高寅寅）</P>', N'hsg', NULL, 30, CAST(0x0000A6F4013D2E91 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (24, N'2009年度第二批中央财政油补开始发放', N'业务介绍', N'<P>&nbsp;&nbsp;&nbsp; 苍南新闻网9月14日消息：日前，我县2009年度第二批中央财政油补工作已全面展开。据了解，省财政厅核定我县油价补贴资金1.1亿元，其中涉及大部分捕捞渔船和养殖渔船的6938万元油补资金已经发放，直补对象可凭一卡通直接到农村合作银行领取。</P>
<P>&nbsp;&nbsp;&nbsp; 油价补贴是国家为稳定社会生活而采取的一项重大政策，涉及我县城市公交、农村客运、渔业捕捞、林业等多个行业，关系着出租车司机和渔民的切身利益。今年油补工作的特点是，根据去年国家财政部等七部委关于落实成品油价格和税费改革后财政补贴机制的实施意见，先上报用油量后下达资金，且随着油价的上涨，补助资金也相应增加。同时，补助资金直接到户，对渔业用油补贴资金通过国库集中支付方式进行发放，即由县财政局国库科将补贴资金统一划拨到国库集中支付帐户，苍南农村合作银行将补贴资金直接打入补贴对象的个人帐户，减少资金拨付到乡镇再由乡镇发放到补贴对象这一中间环节，切实方便补助对象领取。（记者 冯瑞元 通讯员 林文静） </P>', N'hsg', NULL, 31, CAST(0x0000A6F4013D2E93 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (25, N'发改委官员：城镇化政策规划短期内很难出台', N'发货须知', N'<SPAN id=content>
<P align=center><IMG id={A4389BF1-B689-4B0E-BAE5-DF1ED275AD45} alt=发改委官员：城镇化政策规划短期内很难出台 src="http://news.xinhuanet.com/2013-01/10/114313103_11n.jpg"></P>
<P class=pictext align=center><FONT face=楷体 color=navy>　　中国经济展望及<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">城镇化</SPAN>发展高峰论坛</FONT></P>
<P>　　关注中国经济发展、聚焦新型城镇化，昨天，由新京报、国家行政学院经济学教研部、腾讯网共同主办的“中国经济展望及城镇化发展高峰论坛”在北京举行，全国人大常委会原副委员长、著名经济学家成思危、新京报社社长戴自更等学者、企业家、媒体人会聚一堂，探讨了城镇化发展、文化创新等话题。</P>
<P>　　<STRONG>李铁：城镇化核心是农民转市民</STRONG></P>
<P>　　城镇化是昨日的论坛热点。新京报社社长、总编辑戴自更在致辞中表示，新京报将依然坚持进步的美好的价值观，忠实记录时代前进的步伐，做到为人民的呼声发出自己的声音，希望能为中国文化创意产业、新型城镇化视野做出贡献。</P>
<P>　　围绕城镇化发展，昨天与会的嘉宾国家发改委城市和小城镇改革发展中心主任李铁表示，“城镇化的核心是农民转为城市市民，更好地接受平等的公共服务。”</P>
<P>　　李铁还澄清了近期网上有关传言，他表示，城镇化发展政策规划“还正在研究广泛征求意见当中”，短期内很难出台。</P>
<P>　　李铁昨天表示，再搞一个大型投资型的城镇化，并非中央政策所希望的。“城镇化的核心问题就是农民转为城市市民的过程。既不是什么建设、也不是什么投资，就是让农民工在转化为市民的过程中，能更好地接受平等的公共服务。”李铁说道。</P>
<P>　　李铁表示，中国的城镇化政策面临着改革和可持续发展两大问题。户籍制度改革、土地制度改革、行政管理体制改革，而这些改革并不简单。</P>
<P>　　<STRONG>慕海平：城镇化健康发展必须五位一体</STRONG></P>
<P>　　国家行政学院决策咨询部主任慕海平在昨天的论坛上也对城镇化提出自己的看法，慕海平表示，城镇化是一个双刃剑，只有做到产业、人口、土地、社会、农村五位一体的城镇化才能避免可能产生的负面问题。</P>
<P>　　慕海平表示，产业的城镇化是经济支撑，没有产业的发展不会吸引劳动力，无法支撑城镇化的发展。第二人口需要城镇化，建了很多城市没有人那就是空城，必须要有人转移过去。</P>
<P>　　而产业的聚集必然带来土地城镇化，得拿出更多的地来为城市运行、城市发展、为城市的人口服务，这将牵扯到城市的空间布局问题，这和房地产关系非常大。这就是慕海平所说的土地城镇化。</P>
<P>　　此外，慕海平认为，人多的地方矛盾多，社会管理的压力就大，如果社会转型、社会管理创新不跟上，那城市就是积累矛盾的地方，必须得创新体制、机制，这需要社会的城镇化。</P>
<P>　　<STRONG>黄怒波：城镇化布局要考虑社会公平</STRONG></P>
<P>　　中坤集团董事长黄怒波昨日在会上称，城镇化实际上是要解决城乡二元结构，实现城乡一体化的问题，最重要的是实现整个国民的生活品质的同质化，不要大城市在天上，到了小城市在底下。在这方面，城镇化一开始布局就要考虑到社会公平，其次要解决城镇化中房地产模式创新变革的问题，第三城镇化过程中一定不要出现新的破坏。作为地产商，要找新的模式，如社区综合体；旅游地产也大有可为。</P>
<P>　　远洋地产董事局主席、总裁李明昨日在会上表示，站在房地产商的角度看，城镇化的发展方向逃不出两个规律，一是还得按原有城市发展轨迹走。二是加快城镇化建设，经济规律必须要起作用。</P>
<P>　　在昨天的论坛上，来自城市发展、文化创意产业、房地产业方面的专家和企业代表，还就有关论题进行了探讨。随后还举行了新京报第七届标杆地产、家居颁奖典礼。</P></SPAN>', N'hsg', N'upload/1317085910921.jpg', 90, CAST(0x0000A6F4017659CE AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (26, N'苹果CEO库克向中国消费者发致歉信', N'发货须知', N'<P class=titdd-Article align=left>&nbsp;&nbsp;&nbsp; [<STRONG>导读</STRONG>]1993年，苹果正式进入中国市场；20年后，苹果仍在了解中国的过程之中，有了这次315危机，苹果应能学到，中国市场并不仅仅需要同步的产品，也需要同步的沟通。</P>
<P align=center></P>
<DIV class="mbArticleSharePic  " style="WIDTH: 600px" r="1"><IMG height=310 alt="库克第二封道歉信发给中国 苹果内部改革或加速" src="http://img1.gtimg.com/tech/pics/hv1/15/131/1295/84240795.jpg" width=600></DIV>
<P></P>
<P style="TEXT-INDENT: 2em"><STRONG>腾讯科技 娄池 4月2日报道</STRONG></P>
<P style="TEXT-INDENT: 2em"><!--keyword--><SPAN><A class=a-tips-Article-QQ href="http://stockhtm.finance.qq.com/astock/ggcx/AAPL.OQ.htm" target=_blank><!--/keyword--><FONT color=#000000>苹果<!--keyword--></FONT></A></SPAN><!--/keyword-->CEO库克向中国消费者发出了上任后的<A href="http://tech.qq.com/a/20130401/000112.htm" target=_blank><FONT color=#000000>第二封公开道歉信</FONT></A>，这位自称热爱中国的CEO在今年1月访华时仍在向腾讯科技反复强调中国市场对苹果的重要性。可以想象的是，在过去半个月，漫长的流程和繁琐的内部沟通机制让CEO的重视演变成了一种企业层面近乎傲慢的姿态。</P>
<P style="TEXT-INDENT: 2em">库克在这封信里详细的解释了苹果的保修政策，并为忽略中国消费者的感受道歉。遗憾的是，此时距离央视3.15晚会曝光该公司售后问题已超过2周时间，与上次拖延了10天才为iOS地图的诸多使用问题道歉一样，苹果再次暴露了自身在危机公关上的短板和对中国市场的不了解。</P>
<P style="TEXT-INDENT: 2em">尽管有声音认为外资企业对中国市场的反应速度较慢是普遍现象，但大部分的外资厂商在3.15这样重大的问题都能迅速的做出回应——同样在今年央视3.15晚会上被曝光变速器质量问题的德国大众，在晚会当天就承诺会给消费者答复，并在5天后宣布了召回计划；曾被1999年3.15晚会曝光<A class=a-tips-Article-QQ href="http://digi.qq.com/nbook/nbook.shtml" target=_blank><FONT color=#000000>笔记本</FONT></A>质量问题的<!--keyword--><SPAN><A class=a-tips-Article-QQ href="http://stockhtm.finance.qq.com/astock/ggcx/HPQ.N.htm" target=_blank><!--/keyword--><FONT color=#000000>惠普<!--keyword--></FONT></A></SPAN><!--/keyword-->，在晚会第二天就承诺延长笔记本保修期并解决散热问题。</P>
<P style="TEXT-INDENT: 2em">显然，苹果的反应迟缓已经影响到了外界对该公司的信心，在中国媒体连续数天的炮轰之中，已有投资者为苹果在华的市场份额感到忧虑。花旗分析师Glen Yeung在昨日表示，对苹果在中国的市场份额感到担忧，目前不向投资者推荐这只股票。截止昨日收盘，苹果股价已下跌了3.11%。</P>
<P style="TEXT-INDENT: 2em">1993年，随着北京办事处的成立，标志苹果公司正式进入了中国市场；20年后，苹果仍在了解中国的过程之中，有了这次的危机，苹果或许明白，中国市场并不仅仅需要同步的产品，也需要同步的沟通。</P>
<P style="TEXT-INDENT: 2em"><STRONG>库克道歉</STRONG></P>
<P style="TEXT-INDENT: 2em">昨日，苹果中国官网发布了苹果CEO库克致中国消费者的一封信。信中表示，苹果意识到，由于对外沟通不足而导致外界认为Apple态度傲慢，并非不在意或不重视中国消费者的反馈。对于由此给消费者带来的任何顾虑或误会，表示诚挚的歉意。</P>
<P style="TEXT-INDENT: 2em">库克还透露了苹果针对售后实施的四项重点改进，其中包括：一、改进iPhone 4和iPhone 4S维修政策；二、在Apple官方网站上提供简洁清晰的维修和保修政策说明；三、加大力度监督和培训Apple授权服务提供商；四、确保消费者能够便捷地联系Apple以反馈服务的相关问题。</P>
<P style="TEXT-INDENT: 2em">库克称，iPhone 4和iPhone 4S均以以下三种方式中的一种进行维修：如自购买之日起15日内发现问题，为消费者退款或更换一部享有重新计算1年保修期的iPhone；如15日之后发现问题，根据具体情况更换相关部件；如果通过更换部件亦无法快速修好iPhone，为消费者提供一台部分重新装配的设备，采用全新部件，仅保留消费者现有iPhone 4或iPhone 4S后盖。</P>
<P style="TEXT-INDENT: 2em">他承认，关于在华运营和沟通苹果还有许多需要学习的地方，并表示“始终对中国怀有无比的敬意，中国的消费者始终是我们心中的重中之重”。</P>
<P style="TEXT-INDENT: 2em"><STRONG>苹果危机</STRONG></P>
<P style="TEXT-INDENT: 2em">就在库克发布道歉信的当天，花旗分析师Glen Yeung表示，对苹果在中国的市场份额感到担忧，目前不向投资者推荐这只股票。这是中国央视3.15晚会以来首次有分析师对苹果在华业绩表达关注。据央视3.15晚会节目组报道，苹果公司在在售后服务问题频现，不仅违反《移动电话商品修理退还责任规定》，并且多款产品的服务标准违反国家三包规定。</P>
<P style="TEXT-INDENT: 2em">在央视的强烈指责之下，苹果于3月15日当天发出了首个回应，“苹果公司致力于生产世界一流的产品，并为所在市场的消费者提供无与伦比的用户体验。这也是为什么我们在每一家苹果零售店的Genius Bar 天才吧提供深受消费者喜爱的面对面支持。我们也与全国270多个城市的超过500个授权服务点密切合作。我们的团队一直努力超越消费者的期望，并高度重视每一位消费者的意见和建议。”</P>
<P style="TEXT-INDENT: 2em">因为这一“回应”实际上并未回应就央视所质疑的任何问题，被视为苹果“傲慢”的一大证据，随后央视《新闻联播》、《焦点访谈》、《经济半小时》等多套节目中，苹果问题被反复曝光。</P>
<P style="TEXT-INDENT: 2em">3月23日，苹果再次回应，“中国消费者享有Apple最高标准的服务。我们的政策完全符合本地法律法规。Apple在中国所提供的保修政策和在美国及世界各地大致相同。”“鉴于iPhone 5的独特设计，在绝大多数情况下，我们都会根据Apple的政策提供整机更换服务。”</P>
<P style="TEXT-INDENT: 2em">随后，在人民日报连续5天对此事跟踪报道之后，苹果CEO库克出面致歉。</P>
<P style="TEXT-INDENT: 2em"><STRONG>中国挑战</STRONG></P>
<P style="TEXT-INDENT: 2em">过去23年里，央视3.15晚会保持了被曝光者全部道歉的记录，在库克的道歉信发出后，这一记录又添上了浓墨重彩的一笔。尽管电视媒体的影响力在逐年下降，但央视的地位在中国地区仍难以替代，尤其是被消费电子产业视为重要目标的四六级市场，央视多个栏目的报道及人民日报的连续追踪足以影响当地消费者者的购买意向。</P>', N'hsg', N'upload/1317086069593.jpg', 29, CAST(0x0000A6F4017659D4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (27, N'习近平:把“枫桥经验”坚持好、发展好 把党的群众路线坚持好、贯彻好', N'发货须知', N'<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>习近平就创新群众工作方法作出重要指示强调</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>把“枫桥经验”坚持好、发展好　把党的群众路线坚持好、贯彻好</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">新华网杭州10月11日电中共中央总书记、国家主席、中央军委主席习近平近日就坚持和发展“枫桥经验”作出重要指示强调，各级党委和政府要充分认识“枫桥经验”的重大意义，发扬优良作风，适应时代要求，创新群众工作方法，善于运用法治思维和法治方式解决涉及群众切身利益的矛盾和问题，把“枫桥经验”坚持好、发展好，把党的群众路线坚持好、贯彻好。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">习近平指出，50年前，浙江枫桥干部群众创造了“依靠群众就地化解矛盾”的“枫桥经验”，并根据形势变化不断赋予其新的内涵，成为全国政法综治战线的一面旗帜。浙江省各级党委和政府高度重视学习推广“枫桥经验”，紧紧扭住做好群众工作这条主线，为经济社会发展提供了重要保障。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">纪念毛泽东同志批示“枫桥经验”50周年大会11日在浙江杭州召开。会议强调，要深入贯彻落实党的十八大和习近平重要指示精神，从坚持和发展中国特色社会主义的战略高度，继承和发扬优良传统，以与时俱进的精神，研究新情况、把握新规律，创新群众工作方法，加大依法治理力度，完善工作制度机制，不断提高新形势下群众工作能力和水平，切实解决好涉及群众切身利益的突出问题，确保人民安居乐业、社会安定有序、国家长治久安。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">中共中央政治局委员、中央政法委书记孟建柱出席会议并讲话。中央书记处书记、国务委员兼秘书长杨晶主持会议。全国人大常委会副委员长兼秘书长王晨，国务委员、中央政法委副书记、公安部部长郭声琨，最高人民法院院长周强，最高人民检察院检察长曹建明，中国法学会会长韩杼滨等出席会议。</P><!--/enpcontent-->', N'hsg', N'upload/1317086056687.jpg', 80, CAST(0x0000A6F4017659D5 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (28, N'关于2011年度兵役登记和落实预征对象的通告', N'发货须知', N'<IMG style="BORDER-BOTTOM-COLOR: #000000; BORDER-TOP-COLOR: #000000; BORDER-RIGHT-COLOR: #000000; BORDER-LEFT-COLOR: #000000" border=0 src="http://www.cnqk.gov.cn//Upload/PicFiles/zb.jpg">', N'hsg', N'upload/1317085936937.jpg', 67, CAST(0x0000A6F4017659D9 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (29, N'赵一德：实现水利事业跨越赶超发展', N'发货须知', N'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 市委副书记、市长赵一德2月16日在全市水利工作会议上强调，各地各部门要把水利工作摆到更加重要的位置上来，认真学习贯彻中央1号文件精神，切实增强做好新形势下温州水利工作的责任感和紧迫感，抓住机遇、真抓实干，突出重点、加快建设，实现温州水利事业跨越赶超发展，为经济社会发展打下更加扎实的基础。 
<P>　　“十二五”期间，我市水利建设要确保完成投资320亿元，力争400亿元，计划投资量和增长率达到全省第一。今年我市将确保完成投资40亿元，力争完成投资50亿元。</P>
<P>　　在肯定“十一五”发展成就后，赵一德指出，“十二五”时期是温州科学发展的战略机遇期，也是水利事业跨越赶超的黄金发展期。刚刚颁布的《关于加快水利改革发展的决定》是新世纪以来的第8个中央1号文件，也是新中国成立62年来中央首次系统部署水利改革发展全面工作的决定。文件对水利的认识、水利投入机制、水资源管理制度、水利体制机制等方面都有新的突破，温州也将因此迎来政策创新、扩大投资、深化改革等的机遇。我们一定要抓住机遇，把薄弱环节补强，把优势项目做大，把新形势下温州水利工作抓紧、抓实，抓出成效。</P>
<P>　　赵一德指出，要加快推进“三滩”（瓯飞、飞鳌、鳌巴三大海涂围垦工程）、“三江”（瓯江、鳌江、飞云江）治理、三大饮水保障工程（平苍引供水工程、楠溪江引供水工程和顺溪水利枢纽工程）等重点骨干项目建设。加快推进“五小水利工程”、小流域综合整治、农村饮水安全工作等农村水利设施建设。加快推进河道综合治理，标本兼治、多管齐下继续抓好温瑞塘河治理，以及瑞平平原、乐清虹乐柳平原、苍南江南平原等河道整治，积极推动水利与园林、防洪与生态、亲水与安全的有机结合。加快推进水利体制机制改革，创新投融资机制、水利管理机制，实行最严格的水资源管理制度。要把握关键，加快前期，以防灾减灾建设、围垦造地工程、水利生态修复为重点，全力做好“十二五”开局之年的各项重点水利工作。高度重视防汛防台工作，加快推进强塘工程，在主汛期前基本建成西向排洪工程，加快南岸水库前期工作，提前谋划生态河道建设，确保瓯飞围垦工程石料供应。</P>
<P>　　赵一德强调，抓水利就是抓投资、抓环境、抓民生。治水患、兴水利、保水源、优水景，是各级党委、政府义不容辞的责任。各地各部门一定要牢固树立“大水利”的理念，加强领导、落实责任，加强管理、依法治水，加强宣传、营造氛围，努力为温州水利事业发展提供坚强保障。</P>
<P>　　市委常委、常务副市长彭佳学主持会议。市人大常委会副主任叶际仁、市政协副主席朱贵远出席会议。&nbsp;（记者 吴勇）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/1317085922265.jpg', 21, CAST(0x0000A6F4017659DC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (30, N'姚晨通过律师发表声明 否认代言“黑车”', N'发货须知', N'　女星姚晨昨日委托北京市中产律师事务所王震律师发表声明，反驳近日媒体盛传其代言最大“黑车”公司的报道。
<P>　<FONT color=navy>　<STRONG>声明：该企业经营内容未违法或违规</STRONG></FONT></P>
<P>　　今天有国内媒体报道，姚晨代言的叫“一嗨租车”的上海某知名租车企业，因涉嫌代驾租车这一非法业务，被指国内最大的“黑车”机构，这位女星因此被冠上最大“黑车公司”代言人的恶名。 　</P>
<P>　　声明一开始就对此反驳，指上海一嗨汽车租赁有限公司系一家经合法工商注册且具有经营租车业务资质的企业。并称， 姚晨与上海一嗨汽车租赁有限公司签署代言合约前，已充分了解该公司的商业信誉，迄今为止尚未有任何相关政府主管部门或司法部门认定该企业的经营内容有违法或违规现象。</P>
<P>　<FONT color=navy>　<STRONG>声明：媒体报道无权给任何企业或个人的行为定性</STRONG></FONT></P>
<P>　　媒体的报道指，姚晨代言的这家企业名其广告此前曾在北京、上海等地公交车站、地铁等场合密集投放，而在广告画面的主要位置上均标有“带驾”字样。“广告中所说的‘带驾’，实际上就是代驾，很明显这是企业为规避法律风险而刻意为之。”媒体引述知情人士指，事实上，代驾租车是目前存在于国内汽车租赁企业中常见的一种违法经营方式，是指除自驾租车外的另外一种形式，汽车租赁公司在出租车辆的同时提供驾驶员服务，替代顾客驾驶租赁车辆的租车方式。 　　</P>
<P>　　报道说，自驾租车和代驾租车虽只有一字之差，却在法律性质上有着天壤之别：自驾租车是一种财产租赁，从行业属性上看应划入汽车租赁业范畴；而代驾租车实质上是一种客运经营，本质上属于出租汽车业。</P>
<P>　　声明对此称，媒体报道无权给任何企业或个人的行为定性，更不应通过偷换概念的标题和内容损害姚晨女士的名誉和公众形象。</P>
<P>　　声明希望，未经查实的定性言论，各媒体不要向公众发布或传播。</P>
<P>　　声明最后说，将密切关注媒体及网站报道，对导致严重后果的言论和报道，将代表姚晨女士保留追究其法律责任的权利。</P>', N'hsg', NULL, 77, CAST(0x0000A6F4017659DE AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (31, N'刘利民率团赴美出席教师职业国际峰会并作发言', N'发货须知', N'　　中国教育报讯（记者 焦新）应美国教育部长邀请，教育部副部长刘利民率团出席了3月16日、17日在美国纽约市举行的教师职业国际峰会并在会上作了主题发言。 
<P>　　他说，当前中国教育事业进入从规模发展转向质量提升的新阶段。教育大计，教师为本。实现全民教育目标，提升教育质量，关键在教师。中国政府在教育全局中一直把教师放在重要突出位置，采取一系列重大政策措施，包括提高教师社会地位、经济地位，为教师职业发展创造条件，着力加强农村教师队伍建设，促进义务教育均衡发展等。 </P>
<P>　　他指出，按照中国政府去年颁布的教育规划纲要的精神，今后一段时期，中国将把教师队伍建设摆在教育改革的优先议程，坚持办学以教师为本，积极借鉴吸收国外的先进经验和做法，为教师专业发展提供支持，提高中小学教师的整体素质和水平。 </P>
<P>　　此次峰会由美国教育部、经济合作与发展组织、国际教育工作者联盟共同主办，来自美国、英国、日本、中国等16个国家的教育部长、官员、教师协会代表共400人出席。&nbsp;</P>
<P>　　《中国教育报》2011年3月23日第1版</P>
<META name=ContentEnd>', N'hsg', NULL, 77, CAST(0x0000A6F4017659E0 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (32, N'最高法发布修订后的《法官职业道德基本准则》和《法官行为规范》', N'发货须知', N'<P style="TEXT-ALIGN: left" align=left><SPAN>&nbsp;&nbsp;&nbsp; 北京１２月１５日电（记者周英峰、杨维汉）最高人民法院１５日发布了修订后的《中华人民共和国法官职业道德基本准则》和《法官行为规范》。</SPAN></P>
<P><SPAN>&nbsp;&nbsp;&nbsp;&nbsp;最高法院新闻发言人、办公厅副主任孙军工介绍说，最高法于２００１年１０月制定颁布了《中华人民共和国法官职业道德基本准则》，２００５年１１月制定颁布了《法官行为规范（试行）》。两个文件的颁布实施，对人民法院加强队伍建设、改进司法作风，发挥了重要作用。随着我国经济社会的发展和法治建设的不断推进，人民群众对公正廉洁为民司法有了更高的期待，客观形势对法院队伍建设提出了新的要求，原有的《职业道德准则》和《法官行为规范（试行）》亟须进行适当补充和修订。</SPAN></P>
<P><SPAN>&nbsp;&nbsp;&nbsp;&nbsp;据介绍，修订后的《职业道德准则》从加强法官职业道德建设方面提出了很多具体的要求。比如，明确规定要“严格遵守法定办案时限，提高审判执行效率，及时化解纠纷，注重节约司法资源，杜绝玩忽职守、拖延办案等行为”，强调“审理案件保持中立公正的立场，平等对待当事人和其他诉讼参与人，不偏袒或歧视任何一方当事人，不私自单独会见当事人及其代理人、辩护人”；强调法官“不从事或者参与营利性的经营活动，不在企业及其他营利性组织中兼任法律顾问等职务，不就未决案件或者再审案件给当事人及其他诉讼参与人提供咨询意见”；强调“法官退休后应当遵守国家相关规定，不利用自己的原有身份和便利条件过问、干预执法办案，避免因个人不当言行对法官职业形象造成不良影响”等。</SPAN></P>
<P><SPAN>&nbsp;&nbsp;&nbsp;&nbsp;修订后的《行为规范》则对立案、庭审、诉讼调解、文书制作、执行、涉诉信访处理、业外活动等各个环节的法官行为进行了规范。比如在立案方面，《行为规范》强调要“保障当事人依法行使诉权，特别关注妇女、儿童、老年人、残疾人等群体的诉讼需求；便利人民群众诉讼，减少当事人诉累；确保立案质量，提高立案效率”；在诉讼调解方面，《行为规范》要求“树立调解理念，增强调解意识，坚持‘调解优先、调判结合’，充分发挥调解在解决纠纷中的作用；切实遵循合法、自愿原则，防止不当调解、片面追求调解率；讲究方式方法，提高调解能力，努力实现案结事了”等。</SPAN></P>
<P><SPAN>&nbsp;&nbsp;&nbsp;&nbsp;孙军工说，与原文件相比，本次修订的时代特色更加鲜明，充分体现了能动司法、调解优先等司法理念和原则的要求，使其更加符合当前审判工作的实际。同时，两个文件特别突出了“公正、廉洁、为民”司法核心价值观的核心和统领作用。此外，两个文件均设置了专章或专条，明确规定了监督和惩戒措施，使文件的可操作性大大增强，为文件的贯彻落实提供了有力的制度保障。</SPAN></P>', N'hsg', NULL, 70, CAST(0x0000A6F4017659E3 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (33, N'中国铁路亏损引发多方担忧 负债率达60%', N'发货须知', N'&nbsp;&nbsp;&nbsp; 【香港《南华早报》网站5月4日报道】题：中国铁路亏损引发对债务的担忧（记者黄忠清）
<P>　　国有的铁路行业今年一季度罕见地出现了37亿元的税前亏损，增加了人们对其健康发展的担忧。</P>
<P>　　铁道部财务司周一公布数据之前，还有报道称政府正面临逐步缩减其大手笔的铁路投资计划的压力。</P>
<P>　　过去10年来中国内地修建的高速铁路比西方国家过去40年修建的还要多。</P>
<P>　　铁道部官员称北京今年将投资 7000亿元用于铁路建设，到明年底的目标是修建1.3 万公里的高速铁路。但高铁计划在 3月份的人大会议上引发担心，一代表质疑铁路特别是昂贵的高铁能否实现可持续发展。</P>
<P>　　铁道部部长盛光祖和财政部长谢旭人表示，债务水平是“安全、合理或者可控的”。</P>
<P>　　到明年年底，中国内地的高铁里程将占世界的近一半，但经济学家有理由担心铁路建设的健康发展。1 9世纪末，由于出现大量违约，正是铁路公司导致美国公司债券市场的崩盘。</P>
<P>　　美银美林中国区经济学家陆挺表示，鉴于负债率这么高，铁道部出现亏损是很自然的事，尽管他和其他经济学家觉得难以理解铁道部的财务报表。</P>
<P>　　陆挺说：“铁道部参与这种大规模投资从财政上说是有问题的，因为快速向一个行业或企业投入资本必然会降低投入产出比。”</P>
<P>　　铁道部并未提供与去年同期的对比数字，但此前曾表示2010年上半年营业利润为251亿元。2009年税后利润为27亿元，2008年亏损129.5亿元。</P>
<P>　　铁道部还公布截至3月份的总资产为 3.41万亿元，总负债1.98 万亿元。</P>
<P>　　陆挺说60%的负债率太高了。</P>
<P>　　北京交通大学赵坚教授对铁道部的投资计划提出批评，他最近警告说2015年铁道行业将面临债务危机。</P>
<P>　　赵坚说铁道部计划通过车票销售来偿还贷款，但有报道称在许多高铁线如武广线上，一些车厢“几乎无人”。</P>
<P>　　内地媒体表示铁道部面临压力，因此决定削减今年的投资至 4000亿元。自从原铁道部长刘志军涉嫌腐败而被解职以来．这场争论更加激烈。</P>
<P>　　中国银监会最近表示，要求商业银行对高铁项目贷款开展自我评估。</P><!-- publish_helper_end -->', N'hsg', NULL, 11, CAST(0x0000A6F4017659E6 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (34, N'国家标准《纯电动乘用车技术条件》发布', N'发货须知', N'<SPAN id=content>　　2012年5月11日，由工业和信息化部组织全国汽标委牵头，天津清源、东风、奇瑞、长安、上汽等企业及清华大学、同济大学等高校共同参与制定的《<SPAN style="BORDER-BOTTOM: 0px dotted; COLOR: #0084d8; CURSOR: hand; TEXT-DECORATION: underline" onmouseover="fnMouseOverEvent(event, ''null'',''0'',''纯电动乘用车技术条件'')" name="HL_TAG">纯电动乘用车技术条件</SPAN>》，获国家质量监督检验检疫总局、国家标准化管理委员会批准，成为国家标准（GB/T 28382-2012）并以2012年第9号公告发布。该项标准将于2012年7月1日起正式实施。
<P>　　纯电动乘用车技术条件标准在制定过程中收集了大量的资料数据，进行了深入的实验研究，广泛征求了社会各界意见。该标准适用于使用动力蓄电池驱动、5座以下的纯<SPAN style="BORDER-BOTTOM: 0px dotted; COLOR: #0084d8; CURSOR: hand; TEXT-DECORATION: underline" onmouseover="fnMouseOverEvent(event, ''null'',''0'',''电动汽车'')" name="HL_TAG">电动汽车</SPAN>，提出了30分钟最高车速不低于80公里/小时、工况法续驶里程大于80公里的基本要求，同时规定了电动汽车安全、质量分配、加速性能、爬坡性能、低温性能、可靠性等方面的技术指标。</P>
<P>　　《纯电动乘用车技术条件》标准的发布，将进一步规范我国电动汽车的研发和生产，有利于推动电动汽车市场应用，加强电动汽车管理，促进电动汽车产业健康发展。</P></SPAN>', N'hsg', NULL, 83, CAST(0x0000A6F4017659E8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (35, N'关于开展2010苍南县“关爱孤寡老幼、喜迎和谐中秋”系列活动的通知', N'发货须知', N'<DIV>各乡镇、各有关部门(单位)：</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 在中秋佳节即将来临之际，为进一步弘扬中华文化，传承尊老爱幼的传统美德，形成尊老爱幼的社会风尚，让他们过一个温暖、欢乐、祥和的节日，体现社会各界对他们的关爱。中共苍南县委宣传部、苍南县文明办、苍南县慈善总会、苍南县总工会、共青团苍南县委员会、苍南县妇女联合会、苍南县文化广电新闻出版局、苍南县广播电视台、苍南县新闻宣传中心、苍南县壹加壹应急救援中心、浙江天达印业有限公司、温州市金广广告策划有限公司共同发起，联合开展2010苍南县“关爱孤寡老幼、喜迎和谐中秋”系列活动，现将有关事项通知如下：</DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 一、活动主题</STRONG></DIV>
<DIV>&nbsp;&nbsp;&nbsp; 2010苍南县“关爱孤寡老幼、喜迎和谐中秋”系列活动</DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 二、协办、承办单位</STRONG></DIV>
<DIV>&nbsp;&nbsp;&nbsp; 1、苍南县文化馆</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 2、温州市金广广告策划有限公司</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 3、苍南县壹加壹爱心艺术团</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 4、苍南县壹加壹义工联合会</DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 三、活动时间</STRONG></DIV>
<DIV>&nbsp;&nbsp;&nbsp; 2010年9月2日—9月23日</DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 四、活动内容</STRONG></DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 1</STRONG><STRONG>、开展中秋慰问活动(9月2日—9月23日)。</STRONG>组织动员各单位及社区居民、志愿者在中秋节期间，到敬老院、特殊学校、特困家庭开展中秋节慰问活动，为孤寡老幼、残疾人、留守儿童送月饼、水果等慰问品，一起欢度中秋节，让他们感受到社会主义大家庭的温暖。</DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 2</STRONG><STRONG>、开展中秋义卖活动(9月20—9月22日)。</STRONG>主题为“关爱孤寡老幼、喜迎和谐中秋”的2010关爱孤寡老幼爱心义卖活动将在苍南县灵溪镇影城广场举行。此次义卖活动由苍南县壹加壹义工联合会承办，全县爱心企业、商家共同参与，并将所得款项在中秋节期间发放给孤寡老幼，为他们带去节日的祝福。</DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 3</STRONG><STRONG>、</STRONG><STRONG>开展中秋赏月活动(9月20—9月22日)。</STRONG>组织动员各单位及社区居民、志愿者在中秋节期间，邀请孤寡老幼、残疾人等一起过中秋，或者到敬老院、儿童福利院陪他们一起品尝月饼、一起赏月，让他们再一次感受到了社会大家庭的温暖和谐，使他们度过的一个非常有意义的中秋节。</DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 4</STRONG><STRONG>、评选爱心企业、家庭、个人活动。</STRONG>在活动结束后，向所有参与家庭、企业和个人颁发“爱心家庭”、“爱心企业”“先进个人”荣誉证书，并评选出十佳爱心企业、爱心家庭、先进个人，在中秋晚会现场颁奖。<STRONG></STRONG></DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 5</STRONG><STRONG>、开展中秋晚会活动(初定9月21日晚上7：30)。</STRONG>在苍南县灵溪镇影城广场举办以“关爱孤寡老幼、喜迎和谐中秋”为主题的中秋晚会，晚会现场除了邀请县领导、主办单位相关领导、支持企业相关负责人、壹加壹应急救援中心理事会成员、十佳爱心企业、家庭、先进个人以及群众之外，还邀请我县部分孤寡老人、福利院儿童等。</DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 五、活动报名</STRONG></DIV>
<DIV>&nbsp;&nbsp;&nbsp; 1、请各乡镇宣传(文明)办、工会、团委、妇联、慈善分会、文化站、广电站等积极配合、大力宣传“关爱孤寡老幼、喜迎和谐中秋”主题活动的重要意义，组织发动社会各界爱心人士积极参与此次活动。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 2、对于参与此次活动的所有企业、家庭、个人均颁发“爱心家庭”、“爱心企业”“先进个人”荣誉证书。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 3、联系方式：苍南县青少年宫一楼壹加壹办公室，电话：68709453，救助热线：400-110-9453，网址<A href="http://www.yjjy.org/">http://www.yjjy.org</A>.</DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 六、捐赠方式</STRONG></DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 1</STRONG><STRONG>、苍南县慈善总会(</STRONG>苍南县行政副中心1幢319—323室<STRONG>)</STRONG></DIV>
<DIV>&nbsp;&nbsp;&nbsp; 开户银行：浙江省苍南农村合作银行</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 帐&nbsp; &nbsp;&nbsp;&nbsp; 号：1103091101201 000322871</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 户&nbsp;&nbsp; &nbsp;&nbsp; 名：苍南县慈善总会</DIV>
<DIV><STRONG>&nbsp;&nbsp;&nbsp; 2</STRONG><STRONG>、苍南县壹加壹应急救援中心</STRONG>(苍南县青少年宫一楼)</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 开户银行：中国银行温州苍南灵溪支行</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 帐&nbsp;&nbsp; &nbsp;&nbsp; 号：820037795108091001</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 户&nbsp; &nbsp;&nbsp;&nbsp; 名：苍南县壹加壹应急救援中心</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 支付宝公益帐号：yjjyzx@126.com</DIV>
<DIV>&nbsp;</DIV>', N'hsg', NULL, 6, CAST(0x0000A6F4017659EC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (36, N'新华社受权播发计划报告、预算报告', N'发货须知', N'&nbsp; 　新华网北京３月１７日电　新华社受权于１７日全文播发《关于２０１０年国民经济和社会发展计划执行情况与２０１１年国民经济和社会发展计划草案的报告》、《关于２０１０年中央和地方预算执行情况与２０１１年中央和地方预算草案的报告》。十一届全国人大四次会议３月１４日分别表决通过了关于这两个报告的决议，决定批准这两个报告。
<P>　　《关于２０１０年国民经济和社会发展计划执行情况与２０１１年国民经济和社会发展计划草案的报告》全文共分三部分：２０１０年国民经济和社会发展计划执行情况；２０１１年经济社会发展的总体要求和主要目标；２０１１年经济社会发展的主要任务和措施。</P>
<P>　　《关于２０１０年中央和地方预算执行情况与２０１１年中央和地方预算草案的报告》全文共分三部分：２０１０年中央和地方预算执行情况；２０１１年中央和地方预算草案；依法理财，加强管理，圆满完成２０１１年预算。</P><!-- end_ct -->', N'hsg', NULL, 53, CAST(0x0000A6F4017659ED AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (37, N'瓦努阿图北京时间25日7时06分发生里氏6.2级地震', N'发货须知', N'&nbsp;&nbsp; &nbsp;新华网快讯：据美国地质勘探局地震信息网消息，瓦努阿图格林尼治时间２４日２３时０６分（北京时间２５日７时０６分）发生里氏６．２级地震，震源深度为１０．１公里。', N'hsg', NULL, 79, CAST(0x0000A6F4017659F1 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (38, N'国家发改委约谈酒业巨头 批白酒轮番上涨不妥当', N'发货须知', N'　记者昨晚从中国酒业新闻网（中国酿酒工业协会、中国酒类流通协会参与主办）获悉，近日国家相关部门连续一周内两次召开酒行业会议，强调维护价格稳定。其中，白酒近期的轮番上涨被指不妥当，遭到了批评。
<P>　　<STRONG><FONT color=blue>啤酒涨价：可以理解</FONT></STRONG></P>
<P style="COLOR: blue"><FONT color=blue>　　<STRONG>白酒涨价：提出批评</STRONG></FONT></P>
<P>　　记者从中国酒业新闻网看到的这份由中国酒类流通协会发出的《重要情况通报》指出，3月31日上午国家发改委价格司领导邀请发改委价格检查司、商务部酒类流通管理办公室有关领导，紧急约谈该协会、酿酒工业协会及华润、青岛、燕京、百威四大啤酒集团领导。</P>
<P>　　据这份通报指出，价格司领导对啤酒企业受成本上升较多，适当提高部分产品价格表示理解，对成本变化不大但价格轮番上涨的白酒行业，在当前形势下不妥当的定价行为提出了批评。</P>
<P>　　通报说，发改委价格司的领导提出了五点要求，包括：</P>
<P>　　一、认清当前形势，包括经济和社会形势，以及通胀预期可能带来的问题的严重性，充分认识管理好通胀预期，维护市场价格秩序的重要性。</P>
<P>　　二、正确认识保持物价稳定既是政府的责任，也是全社会的责任，当然包括我们每个企业和行业组织。</P>
<P>　　三、充分认识企业利益和国家利益的相关性，国家经济和社会不稳定，企业必然难以长久生存发展。</P>
<P>　　四、充分认识企业行使自主定价权一定要服从国家大局。</P>
<P>　　五、协会和企业一定要配合政府做好稳定价格的工作。要做到：1.保证市场供应，不能人为制造短缺；2.共同维护良好的价格秩序，一定不能搭车跟风涨价；3.确实需要调价一定要和协会、政府沟通，不集中搭车涨价，不超过成本上升合理幅度涨价，不提前散布涨价信息，更不能串通涨价。近期，尤其是上半年必须保持价格稳定。</P>
<P>　<FONT color=blue>　<STRONG>3月份一周内</STRONG></FONT></P>
<P style="COLOR: blue"><FONT color=blue>　　<STRONG>三家酒企宣布提价</STRONG></FONT></P>
<P>　　通报还指出，在4月2日上午发改委价格司再次会同发改委经贸司、商务部市场运行司约请十七家协会负责人，召开了重要消费品行业协会座谈会。“黄酒、葡萄酒行业也必须充分认识此事的重要性，必须做到防患于未然。我们已与茅台、五粮液、泸州老窖、洋河、剑南春、水井坊、汾酒等企业的高层领导进行了沟通，他们均表示坚决支持拥护政府决策。”通报说。</P>
<P>　　记者了解到，在白酒业龙头茅台宣布1月1日起平均涨价20%之后，3月份一周就出现了三家酒企宣布提价的情况。而此前一段时间，雪花、青岛和燕京等啤酒企业也被指在部分区域市场进行了提价。（记者刘俊）</P><!-- end_ct -->', N'hsg', NULL, 70, CAST(0x0000A6F4017659F5 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (39, N'我市服务业发展推出“十大工程”', N'发货须知', N'&nbsp; &nbsp; 我市服务业要实施“十大工程”。记者4月26日从市府办了解到，2011年温州市服务业发展行动计划近日下达，该行动计划对我市服务业“十大工程”进行了明确，并确定了各自组织实施的牵头单位以及今年和“十二五”期间的投资计划。 
<P>　　我市服务业“十大工程”包括：瓯海站前商贸区开发工程、龙湾城市综合体工程、瑞安现代物流园区、乐清滨海城市经济综合体建设工程、平阳鳌江滨江中央商务区（CBD）建设工程、苍南现代市场群、永嘉瓯北商务中心、洞头旅游综合开发项目、文成旅游配套十大中心、泰顺生态旅游产业跨越工程。根据市政府的安排，这“十大工程”今年要完成投资60.1亿元，“十二五”期间，则计划完成投资537.5亿元。</P>
<P>　　据悉，我市今年将重点抓好现代物流、旅游业、金融服务、现代商贸、商务服务、信息服务等六大行业。其中，在金融服务业方面，市工商银行等4家首批金融机构大楼将在滨江商务区内开工建设，含增资扩股在内，全年计划新增小额贷款公司15家，同时争取启动温州民间资本管理服务合作社的试点，计划在2—4个县（市、区）各选择1个行政村或乡镇先行开展。</P>
<P>　　今年，我市还将继续在我市重点行业中选择一批主营业务突出、市场竞争力强、发展潜力大的服务企业，作为重点培养对象，加大扶持力度，支持企业申报省服务业重点企业。</P>
<P>　　市政府确定的目标是：2011年全市服务业增加值力争超过1450亿元，增速达到12%，占GDP比重45%以上，继续保持全省领先地位。据悉，2010年，我市服务业增加值达1297.66亿元，占GDP比重达44.35%，该比值在全省已处于领先地位。（记者 芮文正）</P>
<P>　<STRONG>　服务业“十大工程”概况</STRONG></P>
<P>　　●瓯海站前商贸区开发工程 用地1328.9亩，建筑面积280万平方米</P>
<P>　　●龙湾城市综合体工程 用地165亩，建筑面积37.2万平方米</P>
<P>　　●瑞安现代物流园区 用地4330亩，包括江南物流园、汀田、塘下物流园</P>
<P>　　●乐清滨海城市经济综合体建设工程 用地1000亩，包括总部经济园、会展中心及旅游集散、酒店、精品卖场</P>
<P>　　●平阳鳌江滨江中央商务区（CBD）建设工程 用地1000亩，包括金融、商贸、文化、服务机构以及商务写字楼、酒店等</P>
<P>　　●苍南现代市场群 汽贸城、家电市场、浙闽边贸物流中心、农贸综合市场、粮食市场等项目</P>
<P>　　●永嘉瓯北商务中心 用地108亩，建筑面积20.59万平方米</P>
<P>　　●洞头旅游综合开发项目 金海岸大酒店、国际大酒店、东港奥博休闲中心、珑头湾海洋旅游度假中心等旅游设施</P>
<P>　　●文成旅游配套十大中心 天顶湖旅游接待中心、铜铃山森林旅游服务中心、刘基文化生态园等</P>
<P>　　●泰顺生态旅游产业跨越工程 廊桥-氡泉生态旅游度假区、影视基地、茶文化城、民族特色文化村等</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', NULL, 67, CAST(0x0000A6F4017659F8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (40, N'自动波车主必读 ', N'站内新闻', N'<P>&nbsp; 自动变速器从1939年被美国通用汽车公司首次在轿车上应用，至今已经成为全球汽车业的主流选择。目前，应用于市场主流车型的自动变速器，主要有四种类型：最常见的自动挡(AT)，业内被称为“液力自动变速器”、“机械自动变速器”(AM T)、多见于日系车型的“无级变速器”(CVT)、主要见于德国大众车型的“双离合自动变速器”(DCT)。 </P>
<P>&nbsp;&nbsp;&nbsp; 根据某权威汽车咨询机构预测，到2013年，中国乘用车市场(包括轿车、SUV、M PV)，自动变速器的市场份额将上升至45%左右。在这个倡导低碳环保的时代，人们已经不仅仅关注车辆的操作便利性，哪些自动变速器技术更先进，更节能省油，已经成为新车型抢占市场份额的一大关键。</P>
<P>&nbsp;&nbsp;&nbsp; 液力自动变速器(AT)―――连接平稳但耗油 </P>
<P>&nbsp;&nbsp;&nbsp; 目前各类自动变速器中，最常见的莫过于简称A T的“液力自动变速器”，比起传统的手动变速器，这种液力自动变速器，在结构和使用上有很大的不同。手动变速器主要由齿轮和轴组成，通过不同的齿轮组合产生变速变矩，而液力自动变速器则由液力变扭器、行星齿轮和液压操纵系统组成，通过液力传递和齿轮组合的方式来达到变速变矩。</P>
<P>&nbsp;&nbsp;&nbsp; 液力自动变速器在操作时，不需要使用离合器换挡，挡位少变化大，连接平稳，操作容易。但是它的缺点也不少：首先是驾驶乐趣方面，它对速度变化反应较慢；其次，从经济角度考虑，在相当路况相当驾驶习惯下，液力自动变速器会比手动挡更加耗油，同时，它的机构比较复杂，如果操作不当，更会引致多种毛病，而且维修起来，也会比手动挡更加困难。 </P>
<P>&nbsp;&nbsp;&nbsp; 日常驾驶操作过程中，车主们的陋习会增加自动变速器损坏的机会。有些车主在堵车时间比较长的时候，仍将挡位保持在D位，同时踩下制动，这种操作方法对于自动波汽车机件的损害比较明显。因为如果保持挡位在D挡上的话，尽管已经刹停汽车，但是此时自动挡车辆仍然会存在微弱的向前行驶趋势，长时间踩住制动等于强行制止这种趋势，这会使汽车的变速器油温升高，油液容易变质。正确的操作方法应当是踩紧刹车后再将自动波挡位挂入N挡位，然后再拉紧手制动，最后松开脚刹。同时，挂上档后马上狠踩油门起步，自动变速箱在挂上D挡或R挡后应该至少停留0.5秒后再松刹车起步，因为变速箱内部离合器结合需要一点时间。而且需要注意，自动变速箱内部不能入水，因为内部摩擦材料浸水后会变质。万一入水就不要运转，尽快多次换油处理。另外，当自动挡车辆因抛锚要拖车时，尽量使驱动轮离地或车速不要太快，因为发动机没运转时变速箱内部没有润滑，非常容易磨损。</P>
<P>&nbsp;&nbsp;&nbsp; 汽车养护专家陈锦明向记者介绍，目前因自动变速箱损坏，需要现场施救的事件屡见不鲜。他在检查后发现，自动变速箱内各磨擦片严重烧蚀，叶片卡死而导致汽车不能行驶。而导致故障的主要原因，是由于自动变速箱严重失油或自动变速箱油变质。据了解，在很多车主中，并没有养成更换自动变速箱油的意识。有一些故障是刚换了自动变速箱油不久，而更换了劣质油和不按型号换油，也会导致自动变速箱“短命”。 </P>
<P>&nbsp;&nbsp;&nbsp; 近年部分汽车制造商声称自己的自动变速箱不需要对油液进行检查和更换，事实上，当等到油液变质时才更换，那时要换的就已经是整个自动变速器了。自动变速器油的更换周期是以行驶公里数或使用时间为准，若在车辆使用手册中同时给出了这两个指标，则哪一项指标先到就先执行。如果车辆使用手册未标明自动变速器的换油时间，则按照6-8万公里的里程来更换。在我国建议使用恶劣条件下，时间比较短的更换周期。 </P>', N'hsg', N'upload/1317085910921.jpg', 85, CAST(0x0000A6F40176E539 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (41, N'关于领取2010年12月日本语能力测试的成绩和证书的时间安排', N'站内新闻', N'<FONT class=b1 id=zoom>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <SPAN style="FONT-SIZE: 10.5pt; LINE-HEIGHT: 130%; FONT-FAMILY: 宋体; mso-hansi-font-family: ''Arial Unicode MS''; mso-bidi-font-weight: bold">凡于<?xml:namespace prefix = st1 ns = "urn:schemas-microsoft-com:office:smarttags" /><st1:chsdate w:st="on" IsROCDate="False" IsLunarDate="False" Day="5" Month="12" Year="2010"><SPAN lang=EN-US>2010</SPAN>年<SPAN lang=EN-US>12</SPAN>月<SPAN lang=EN-US>5</SPAN>日</st1:chsdate>在北京市教育考试指导中心考点参加日本语能力测试的考生，请于<st1:chsdate w:st="on" IsROCDate="False" IsLunarDate="False" Day="25" Month="3" Year="2011"><SPAN lang=EN-US>2011</SPAN>年<SPAN lang=EN-US>3</SPAN>月<SPAN lang=EN-US>25</SPAN>日</st1:chsdate>（周五）、<st1:chsdate w:st="on" IsROCDate="False" IsLunarDate="False" Day="26" Month="3" Year="2011"><SPAN lang=EN-US>3</SPAN>月<SPAN lang=EN-US>26</SPAN>日</st1:chsdate>（周六）<SPAN lang=EN-US>9:00</SPAN>至<SPAN lang=EN-US>16:30</SPAN>，持本人身份证及准考证来北京市教育考试指导中心一层大厅领取成绩单（证书）。凡本人不能到场领取的考生，可委托他人代为领取，代领人须持本人和考生双方身份证、考生委托书、考生身份证复印件和准考证领取成绩单（证书）。<SPAN lang=EN-US><?xml:namespace prefix = o ns = "urn:schemas-microsoft-com:office:office" /><o:p></o:p></SPAN></SPAN></FONT>', N'hsg', N'upload/1317086069593.jpg', 50, CAST(0x0000A6F40176E53B AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (42, N'埃及一客运列车出轨致14人受伤', N'站内新闻', N'<DIV class=clear></DIV>
<DIV id=contentblock><SPAN id=content>
<P style="TEXT-ALIGN: center" align=center><FONT style="FONT-SIZE: 12pt" face=仿宋_GB2312 color=navy size=1><IMG id={020375B8-6422-4359-88B1-23DD2E97231C} title="" style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" hspace=0 src="http://news.xinhuanet.com/2012-07/18/112461064_11n.jpg" align=center border=0 sourcedescription="" sourcename=""></FONT></P>
<P style="FONT-SIZE: 12pt; COLOR: navy; FONT-FAMILY: 仿宋_GB2312; TEXT-ALIGN: left" align=left><FONT style="FONT-SIZE: 12pt" color=navy>&nbsp;&nbsp;&nbsp; 7月17日，人们聚集在开罗市郊的列车出轨事故现场。<FONT size=3><FONT face=仿宋_GB2312><SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">埃及</SPAN>一列旅客列车17日在开罗南部的巴德拉欣发生出轨事故并起火，造成至少14人受伤。 新华社发</FONT></FONT></FONT></P>
<P>　　新华网开罗７月１７日电（记者李来房　陈聪）埃及一辆客运列车１７日下午从南部索哈杰省开往首都开罗途中发生<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">出轨</SPAN>事故，造成至少１４人受伤，开罗至埃及南部的铁路交通中断。</P>
<P>　　铁路部门官员说，这列火车在临近吉萨省南部巴德拉欣车站时出轨，三节车厢侧翻。出轨原因是另外一辆客运<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">列车</SPAN>上的乘客为抗议他们乘坐的列车停车为这列快车让路，在铁轨上放置了障碍物。</P>
<P>　　埃及卫生部说，受伤乘客主要是擦伤或骨折，其中一些伤员已被送往当地医院治疗，状况稳定。埃及总检察长马哈茂德已经要求吉萨省检察部门前往事故现场调查，确定事故发生的真正原因。</P>
<P>　　埃及历史上最为惨重的一次列车事故发生在２００２年２月２０日，当时一列从<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">开罗</SPAN>开往南部城市阿斯旺的火车一节车厢突然起火，火势蔓延至其他车厢，最终造成３７３人死亡、７０多人受伤。</P></SPAN></DIV>', N'hsg', N'upload/1317086056687.jpg', 1, CAST(0x0000A6F40176E53D AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (43, N'市领导来钱库镇检查验收“站点之星”工作', N'站内新闻', N'<P>&nbsp;&nbsp;&nbsp; 1月11日，市委组织部电教中心副主任陶学举、电教中心科员张国林来我镇倪处村视察验收“站点之星”工作情况，县委组织部部务会议成员、组织员管理办公室主任杨崇演、组织部电教中心副主任王同景、钱库镇组织委员王晓冬等人陪同。<BR></P>
<P>&nbsp;&nbsp;&nbsp; 检查组一行认真听取了关于倪处村“站点之星”工作情况的汇报，实地查看了倪处村的远程教育、文化中心基础设施。倪处村站点始建于2006年12月，2009年2月被评为第三批省级学用示范点。站点服务范围内共有村民5200人，其中党员62名。该村远教播放点使用面积200平方米，可容纳100多人，配有投影仪、音响、电脑等设备。</P>
<P>&nbsp;&nbsp;&nbsp; 检查组对钱库镇倪处村的远程教育基础设施建设情况给予了肯定。陶学举提出四点要求：一、要注重教育培训，服务基层建设，二、要注重农村发展，服务农村经济，三、要注重农村文化，服务农民生活，四、要做好设备维护工作。远教站点管理员要结合当月的教育内容，适时进行内容更新，确保播放内容与时俱进，做到党员群众喜欢看、乐意看，最终实现“让干部经常受教育，使农民长期得实惠”。(吴连明)</P>', N'hsg', N'upload/1317085936937.jpg', 88, CAST(0x0000A6F40176E541 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (44, N'近视司机靠妻子播报路况在高速路蛇行百里', N'站内新闻', N'本报讯 (通讯员周明凯 记者李亦中)近视眼丈夫眼镜不小心摔破，竟然靠妻子播报路况，在高速公路上蛇行50公里，幸亏民警及时发现。
<P>　　17日21时20分许，高管二十五大队民警巡逻至大广高速公路湖北黄冈段大庆方向2447公里处时，发现一辆黑色本田轿车缓慢“蛇行”，便通过喊话器叫停该车。</P>
<P>　　经询问，驾驶该车的是团风县一对夫妻。驾驶员吴先生是一名高度近视者，夫妻俩周六到江西九江泡温泉，回行途中，在黄黄高速公路二里湖服务区上厕所时，由于下雨路滑，吴先生不小心摔了一跤，将眼镜摔碎了，眼前一片模糊。</P>
<P>　　由于高速公路远离城区，无法配到新眼镜，妻子李女士又不会开车，情急之下，李女士让吴先生继续驾车，自己负责观察道路环境，指挥丈夫把控行车方向，两人就这样配合着驾车行驶了近50公里。</P>
<P>　　民警对两人的危险驾车行为提出了严厉批评，并依法给予罚款200元的处罚。为确保安全，民警代驾，将两人安全送回了团风县城的家中。</P>', N'hsg', N'upload/1317085922265.jpg', 43, CAST(0x0000A6F40176E545 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (45, N'钱库镇召开邮政站建设工作会议', N'站内新闻', N'<P align=left>&nbsp;&nbsp;&nbsp; 3月17日，在我镇二楼会议室召开邮政站建设工作会议，来自钱库行政村居的有关工作人员参加会议。钱库邮政局局长林全宠、副镇长杨乃国等领导出席本次会议。</P>
<DIV>&nbsp;&nbsp;&nbsp; 会上，有关工作人员首先宣读了《浙江省村邮政管理建设办法》，然后与会人员认真填写《服务村邮政房建设申报表》以及相关资料。(钱宣)</DIV>', N'hsg', NULL, 98, CAST(0x0000A6F40176E548 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (46, N'千册图书送给低保户', N'站内新闻', N'　本报讯&nbsp;（记者张颖妍&nbsp;通讯员东城宣）昨日上午，东城文化中心、东城图书馆的工作人员将民间故事卷《东城故事》、画册《东城》等一批图书送到下桥社区的两户单亲家庭家中，这是东城“文化礼包”的一部分，即日起，近千册图书将陆续送到50户低保家庭。
<P>　　据了解，为鼓励低保户家庭孩子努力学习，改变生活环境，东城开展“书香飘万家、与低保户共享文化硕果”送书活动，从昨日开始，系列送书活动会在东城各社区广泛展开。</P>
<P>　　东城图书馆工作人员陈静表示，希望通过文化扶贫方式，通过实实在在的送书活动，将知识送到千家万户。她笑着告诉记者：“希望这份‘文化礼包’能让低保户、困难户感受到东城政府的关爱，这也是推进东莞文化名城建设的有力措施。”</P>', N'hsg', NULL, 72, CAST(0x0000A6F40176E54B AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (47, N'专家:上海北京生活成本被指高过纽约系误解', N'站内新闻', N'&nbsp;&nbsp;&nbsp; 美世公布的“<SPAN style="BORDER-BOTTOM: 0px dotted; COLOR: #0084d8; CURSOR: hand; TEXT-DECORATION: underline" onmouseover="fnMouseOverEvent(event, ''null'',''0'',''生活成本'')" name="HL_TAG">生活成本</SPAN>”，特指政府机构和跨国公司派驻海外人员在各个城市的生活成本。这与通常讲的居民生活成本不是一回事。混淆两种不同的“生活成本”，不仅无助于科学比较，而且容易导致情绪化倾向。 
<P><FONT color=#000080><SPAN>　　</SPAN><SPAN style="FONT-WEIGHT: bold">被误解和曲解的全球生活成本排名</SPAN></FONT></P>
<P><SPAN>　　<SPAN style="BORDER-BOTTOM: 0px dotted; COLOR: #0084d8; CURSOR: hand; TEXT-DECORATION: underline" onmouseover="fnMouseOverEvent(event, ''null'',''0'',''美世'')" name="HL_TAG">美世</SPAN>（Mercer）是全球最大的人力资源服务机构之一。这家公司近日发布的《2012年全球生活成本调查》称，东京是全球生活成本最高的城市，中国香港名列第9位，中国内地则有9个城市进入前100位，其中上海和北京分别名列第16和第17位；纽约是美国生活成本最高的城市，但排列在全球第33位；同时美国只有纽约、洛杉矶（第68位）和旧金山（第90位）3个城市进入前100位，大大少于中国内地。</SPAN></P>
<P><SPAN>　　2011年上海、北京的人均GDP都已超过1.2万美元，根据有关资料估算，这大约相当于纽约市人均GDP的1/6-1/5。但为什么上海、北京的生活成本排名显著领先于纽约？令人费解。</SPAN></P>
<P><SPAN>　　其实，这是部分国内媒体在引用美世“全球生活成本调查”资料时粗枝大叶造成的误解，有的媒体则为了哗众取宠而肆意夸大曲解。</SPAN></P>
<P><SPAN>　　美世公布的“生活成本”，并非指各个城市里普通居民的生活成本，而特指政府机构和跨国公司派驻海外人员在各个城市的生活成本。美世做这项调查，目的是为政府机构和跨国公司给派驻人员确定薪酬、津贴提供参考，调查报告拆零出售，价格不低。美世的调查涵盖全球214个城市，内容包括交通、食品、服装、家居用品、娱乐等200多个项目的相对成本，而住房成本是第一重点，因为这往往是派驻人员最大的一笔支出。需要指出的是，派驻海外人员对住房的地段、配置等要求一般显著高于当地居民，租金较高，因此一个城市（特别是中心城区）的房价对“全球生活成本”的排名位次有重要影响。另外，美世将各城市的生活成本按美元汇率折算，如果某城市所在国的货币相对美元升值了，那么它的排名就会前移。</SPAN></P>
<P><SPAN>　　除了美世，英国《<SPAN style="BORDER-BOTTOM: 0px dotted; COLOR: #0084d8; CURSOR: hand; TEXT-DECORATION: underline" onmouseover="fnMouseOverEvent(event, ''null'',''0'',''经济学人'')" name="HL_TAG">经济学人</SPAN>》杂志也调查公布过131个城市外籍人士的“生活成本”。好抓眼球的某些媒体，有意无意地在报道中淡化甚至隐去美世和《经济学人》调查的对象、背景，造成误导。某媒体的报道标题居然是这样的：“生活成本相比，北京上海完胜纽约巴黎”。另一媒体报道的标题则是：“经济学人调查城市生活成本，活在上海比纽约贵”。这很不严谨和严肃。</SPAN></P>', N'hsg', NULL, 65, CAST(0x0000A6F40176E54C AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (48, N'爱心衣橱基金温州工作站在苍成立', N'站内新闻', N'<DIV id=topic class=lh24>
<DIV style="TEXT-INDENT: 2em"></DIV></DIV>
<DIV id=showvideo>
<DIV align=center><!-- rm url is empty!--></DIV></DIV>
<DIV id=ftcg class=content><!--function content() parse begin-->
<P>&nbsp;&nbsp;&nbsp; 苍南新闻网7月14日消息：7月11日晚，中国青少年发展基金会爱心衣橱基金温州工作站成立暨青企协成立十周年庆典大会举行，来自全县各行各业近200名优秀青年企业家汇聚一堂，共商苍南实体经济发展大计，积极承担社会责任，为“爱心衣橱”基金奉献爱心。县领导黄荣定、张国良、蒋荣国等出席仪式。</P>
<P>&nbsp;&nbsp;&nbsp; 黄荣定说，当前我县正处在全面实施“双海双区”经济发展战略、全力打造“浙南闽东北最具活力的工贸生态滨海城市”奋斗目标的重要阶段。广大青年企业家是苍南的精英，担负着苍南经济社会持续发展的重要责任，要在苍南的城市化建设过程中发挥排头兵的作用。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 黄荣定对广大青年企业家寄予厚望，他指出，面对危机和挑战，青年企业家要不断增强忧患意识，保持清醒头脑，坚定必胜信念，始终走在市场前列。要不断增强争先意识，面对我县实体经济落后、产业低小散的现状，奋起直追、弯道超车、后来居上。要不断增强进步意识，认真把握好企业产品研发、生产、销售的每一个环节，加快产品更新换代步伐，提升自主创新能力，实现企业的可持续发展。要不断增强团队意识，办企业首先用的是人才，靠的是专家，进一步团结协作，用最优秀的团队打造一流的企业。要不断增强实干意识，脚踏实地、真抓实干，振兴实体经济，为苍南的130万人民群众做好表率。</P>
<P>&nbsp;&nbsp; “苍南就是一座山，它的名字叫做玉苍山；苍南就是一片海，它的名字叫做‘海纳百川’。”黄荣定希望，全县广大青年企业家都要像玉苍山一样巍峨、挺拔、雄壮，像大海一样海纳百川，继承发扬“敢为天下先”的创业精神，为苍南的实体经济健康和谐发展谱写新篇章。</P>
<P>&nbsp;&nbsp;&nbsp; 会上，县青年企业家协会会长方文彬与“爱心衣橱”发起人王凯共同签署协议，爱心衣橱基金温州工作站正式成立。县青企协爱心银行现场为“爱心衣橱”温州工作站捐赠50万元，同时为钱库镇新安一小（外来农民工子弟学校）赠送5万元爱心营养早餐。</P>
<P>&nbsp;&nbsp;&nbsp; 据悉，“爱心衣橱”是由中央电视台财经频道主持人王凯、马洪涛发起，由众多企业家、主持人、编导、记者共同参与推进的一项爱心公益行动，通过各种线上线下活动等不同渠道筹集资金，给贫困地区的孩子们定制防风防雨保暖透气的新衣服，倡议社会各界爱心人士关注贫困地区儿童的心灵关爱和教育问题。“爱心衣橱”从2011年6月6日成立至今，已经为甘肃、贵州、云南、四川、青海、西藏等16个省/自治区的49个市、区（县）的52257名贫困地区孩子送去温暖新衣。（记者 陈君 实习生 林超群）</P></DIV>', N'hsg', NULL, 6, CAST(0x0000A6F40176E550 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (49, N'苍南龙港：义务消防队业务技能比武展雄风', N'站内新闻', N'&nbsp; <BR>&nbsp;&nbsp;&nbsp;&nbsp; 为检验农村义务消防队的器材装备操作熟悉程度和灭火实战能力，由苍南县龙港镇政府主办、龙港镇安全监察分局、龙港消防中队承办的龙港镇农村义务消防队业务技能大比武于6月30日上午在龙港消防中队顺利举行，来自全镇25支农村志愿消防队的150名队员，耐着高温酷暑、顶着烈日参加了此次业务技能大比武。 <BR>&nbsp;&nbsp;&nbsp;&nbsp;此次业务技能大比武主要对义务消防队员的体能素质、技能水平和协同作战能力进行全方位的量化考核，比武项目为手抬机动泵单干线出两支水枪操。比武过程中，队员们发扬争先创优，敢打敢拼的作风和精诚合作的团队精神，赛场上奋勇争先，竞赛气氛十分热烈。最终，经过紧张角逐，薛家桥村义务消防队夺得比武第一名，周家车村、刘南村义务消防队以优异的成绩分别夺得第二、三名。 <BR>&nbsp;&nbsp;&nbsp;&nbsp;龙港消防中队作为赛事承办方在做好各项保障工作的同时，选派作风过硬、训练有素的官兵参与了赛事的裁判工作，在公平、公正的氛围中井然有序地做好了裁判、计时、统计等工作，其优良的工作作风、严格公正的评判和优质的服务受到了各义务消防队参赛队伍的一致赞扬。 <BR>&nbsp;&nbsp;&nbsp;&nbsp;在颁奖仪式上，龙港镇安全监察分局高满胜局长充分肯定了25支队伍喜人的成绩，认为经过近年来的建设，农村义务消防队的整体实力已得到了全面发展，基本具备了扑救农村初期火灾的能力，为农村火灾扑救和保护村民生命财产发挥了应有的作用。同时他勉励全体队员，要以此次比武为新的起点，不断提升整体素质，努力使各个志愿队成为一支“招之能战、战则能胜”的让群众人放心的消防队伍。 <BR>&nbsp;&nbsp;&nbsp; 据悉，苍南县龙港镇农村以再生棉、纺织等行业为支柱产业，这些产业多易了发生火灾，极易给业主带来重大损失。近年来，随着农村义务消防队力量的不断壮大，给农村初期火灾的扑救作出了积极贡献。 <BR>审核人：龙港中队中队长&nbsp;&nbsp;&nbsp;王永敢 <BR><BR>&nbsp; <BR>&nbsp; <BR>&nbsp;', N'hsg', NULL, 78, CAST(0x0000A6F40176E551 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (50, N'东澳岛十一游有感', N'站内新闻', N'&nbsp; 十一跟着朋友一起去<A href="http://zhuhai.cncn.com/jingdian/dongaodao/" target=_blank><FONT color=#000099>东澳岛</FONT></A>上玩，早就知道岛上的物价的贵了，但是想着3个人也吃不了多少钱，贵点就贵点吧。下了船登上感觉岛上空气、风景都还是很不错的，一切都预示着这是一次愉快的度假。码头上中午选了家餐厅吃了个饭，大概比外面的菜要贵个一半，但也没在意。然后出发去沙滩，途中也问了几个旅店，都是那种渔民自己的房子改的旅店，实在是很破。（估计在外面才60块一夜）。一问双人间，400块，还问七问八的，感觉老不想把房间租给你的样子，于是哥们闪人。步行3公里到了沙滩上（为什么不坐车呢？当然是有车的，但是10块一人，俺是不坐！），找了个帐篷住下了，一夜100块（自带帐篷收50元场地费）。然后享受海滩、游泳（提示：游泳后冲淡10元一次），一切到目前为止俺都觉得还不错。<BR>&nbsp;&nbsp;&nbsp; 然后到了晚上游了遍岛，由于沙滩上就一家餐厅，所以只能去那吃饭，我们随便找了个桌子坐下了，然后喊服务员拿菜单来，半天没人鸟你，咋办？自己去拿呗，看了下菜单，不仅价格比码头上的那些餐厅还要贵，并且在下面用一圆珠笔写了行小字：本店结账时在消费的金额上再额外加收10%的茶水费。我跑过去问服务员，这个费用我可以享受到什么？她肯定的告诉我：什么都没有。我回道：那不就是明摆着多收？她不置可否！俺回来坐着了正在想着要是不在这吃能去哪吃呢？这时一个女人貌似是这家饭馆的老板过来了，对着我旁边一桌的4个人吼道：”服务员，他们没点菜你给他上什么茶水啊！？”那位桌子上的游客解释说：”我朋友已经去点菜了啊，正等着上菜呢。”女老板这样回他：“算了，这桌菜不上了！”当时那位游客就傻了，不知道是什么回事，估计是第一次受到这种服务没反应过来。然后对着还在考虑的我们走了过来，吼道（真是吼，那叫一个牛逼啊）：“你们3个人居然还坐一桌，跟旁边的坐一起去！”你们说我能忍么，到哪吃饭都是自己选位置，况且那时候还有很多空位子，居然还吼着要我过去跟别人一起坐。于是我把菜单甩桌子上，然后说了句“你好牛逼哦”，顺便看了下刚被说不要给他们上菜的那桌人，问他们这都不走？那兄弟也是有涵养，居然只是对着我苦笑，依然坐在那。我们走了出来，看到旁边有个商店，想着没别的东西吃了就泡面将就下吧，一下是跟店老板的对话：<BR>', N'hsg', NULL, 27, CAST(0x0000A6F40176E553 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (51, N'柴油荒波及全国愈演愈烈 多省民营加油站停供', N'站内新闻', N'　&nbsp; 正在多个省市肆虐的“柴油荒”不仅没有缓解的迹象，反而有愈演愈烈之势。《经济参考报》记者15日从多家市场机构获悉，柴油批发价格继续维持在8000多元一吨的价位，部分偏僻地区的销售价格甚至接近10000元，批发与零售价格之间的“倒挂”更加恶化。
<P><STRONG>　　价格普遍走高但有价无市</STRONG></P><!--advertisement code begin--><!--none--><!--advertisement code end-->
<P>　　“不过一两周的时间，此前仅在华东和华北地区出现的柴油荒目前已经波及到全国，各地柴油价格普遍走高，且有价无市。在西南和川渝的个别偏僻地区，柴油已经卖到8块钱一升，相当于9500元一吨。”息旺能源成品油分析师廖凯舜说。</P>
<P>　　东方油气网首席分析师钟健表示，在柴油批零倒挂的情况下，加油站卖一吨亏一吨，多的要亏600多块一吨，所以很多加油站都选择了不卖或者少卖，因为无力承受，几乎所有的民营加油站都停供柴油了。</P>
<P>　　中国商业联合会石油流通委员会上周公布的数据显示，南方有2000多家民营加油站因缺油而停业，停业加油站集中在广东、江苏、浙江等省。对此，廖凯舜称，目前停供柴油的民营加油站数目已经大大超出了这个数目。</P>
<P>　　“现在好多加油站都只能加100块到400块不等的柴油，给再多钱都买不到。市区还好点，高速路上排队加油的多得是。这种严重的情况也只有2008年的时候才出现过一回。”钟健说。</P>
<P>　　《经济参考报》记者日前在京珠高速湖南段沿线岳阳、长沙、株洲、湘潭等地看到，多个加油站前货车排起了数百米长的队伍等待加油。而长沙市、湘潭市城区一些加油站排队加柴油的车辆，从加油机前一直延伸到马路上，在一些路段直接导致严重塞车。</P>
<P><STRONG>　　两大石油公司正加紧提高柴油供应，但作用有限</STRONG></P>
<P>　　据悉，两大石油公司正在进一步提高柴油供应。中石油11月将保持原油日加工40万吨的历史最高水平，柴油计划生产量较10月每日增加1万吨，达到日均16 .8万吨。同时，中石化11月计划销售柴油同比增长23%，生产柴油同比增长11%，并进口柴油弥补国内供需缺口。</P>
<P>　　不过，业内人士称，中石油中石化“保供”的作用比较有限，毕竟量比较小。息旺能源认为，四季度国内柴油供应理论上将优于三季度，但整体来看，受原油价格高位，卖方惜售等因素影响，预计市场资源供应仍将保持相对偏紧的状态。</P>
<P>　　另据业内人士透露，在“柴油荒”的作用下，两大石油公司之外的社会经营者的获油渠道变窄，但是仍然有一部分人可以从中海油、中化、甚至山东地炼企业等渠道获得柴油，然后再转手倒卖。</P>
<P><STRONG>　　“黑油站”乘机倒卖</STRONG></P>
<P>　　在湖南长沙，一些人发现柴油市场有利可图，利用民宅或者购买小型槽车，办起了“黑油站”。在柴油供应平稳的季节，他们以低于国有主渠道0 .2元到1元之间不等的价格兜售，直接冲击国有炼油企业生产柴油的积极性。而到了“油荒”季节，这些“黑油站”以高于“牌价”0 .5元至1元的价格高价倒卖，从中牟取暴利。</P>
<P><STRONG>　　网民认为：气荒、油荒与企业垄断有密切关联</STRONG></P>
<P>　　本报15日刊发《防“石油魔咒”：中国天然气面临增长困局》一稿，对今冬天然气供应可能出现气荒现象进行了剖析。该文在网上引发了网民对最近油荒、气荒的争论。　气荒与垄断企业有关</P>
<P>　　网民“中国农民杨涛”说，全国大闹气荒，原因并不得而知，各有各的理由。有行业人士分析认为，是国内中石化等行业巨头坐地起价，“川气东送”项目出现停滞，一定程度加剧了“气荒”———而停滞是因为与下游用户在购销协议上谈判进展缓慢。其真实原因是石油巨头觊觎市场供应紧张的有利时机以获得更高的市场价格。事实上，近段时间以来，国内天然气巨头认为目前价格不合理，要求进行天然气价格体制改革的呼声已经越来越高。</P>
<P>　　他说，对于中石化、中石油来说，目前在尽快扩大天然气供应上并不很积极，这实际上是在与市场博弈。因为石油巨头在签订供应协议时有话语权。根据中石化原计划，“川气东送”今年9月份就要实现局部通气，年底全线贯通。然而，到目前为止，中石化仍然未与下游燃气公司签订购销协议。就连中石化内部人士都坦言，购销协议的签订不是什么问题，最关键的一点还是价格问题。如果价格不理顺，相关单位发展天然气的积极性就不会很高。</P>
<P>　　他认为，全国出现气荒与企业垄断有密不可分的关系，要从根本上解决问题必须引入公平的竞争 机制 ，加 大天 然气 开发 利用， 打破 垄断 经营 的局 面， 否则，中国的气荒不但不能彻底从根本上解决反而会导致百姓一直叫苦的尴尬局面。</P>
<P><STRONG>　　“柴油荒”倒逼体制之弊</STRONG></P>
<P>　　网民“马光远”指出，自十月份以来蔓延全国的“柴油荒”至今没有缓和的迹象，而对于引发“柴油荒”的原因，无论是拉闸限电说，还是天气说，检修说，以及供需失衡说等等，很显然都无法解释在目前的情况下引发的这种史无前例的惶恐。</P>
<P>　　他说，目前没有十足的证据证明这次油荒完全是两大石油巨头联手导演的逼宫的大戏，但很显然，一些明显的疑问并没有得到两大石油巨头的回应：其一，从供需而言，我国的柴油供需矛盾并不紧张，而且今年1到9月份产量增长明显，为什么出现如此巨大的缺口，柴油去了哪里？其二，既然每年的8月份到年底，都是柴油消费的旺季，为什么炼油企业选择在这个时候“不约而同”地停产检修；其三，在柴油荒在全国蔓延之时，为什么我国在第三季度还大量出口柴油，海关的数字也显示，今年1至1 0月成 品油 出口 量同 比增19 .8%至2290万吨，其中10月出口量依旧高达188万吨，在国内出现短缺的情况下，为什么还要大量出口成品油？</P>
<P>　　他指出，一而再，再而三的“柴油荒”等，的确在倒逼石油等垄断领域的改革进程，如果不破釜沉舟，推进成品油生产、销售和价格机制的真正市场化改革，迟早有一天，垄断巨头将制造骇人听闻的短缺的人祸。既然国家对炼油企业每年给予巨额的补贴，既然几大石油巨头牢牢将成品油的生产垄断在自己的手里，却又不能保证供应，那就应该追究他们的责任。</P>
<P><STRONG>　　需要政府站出来</STRONG></P>
<P>　　网民“不执着”认为，气荒、油荒的发生，决不是孤立的，而是与其上下游产业乃至与去年的宽松货币政策有着密不可分的关系。由于市场流动性过剩，造成了大量富余资金在农产品上兴风作浪，把农产品当作金融商品来投机炒作。政府现在一定要运用其手握的丰富行政资源，严厉打击投机炒作势力，当某种农产品价格出现暴涨的时候，政府一定要利用自己的物资储备来调整市场供应，打乱炒作者的部署，有效平抑物价，否则就会危害整个产业链乃至中国的经济。曾亮亮</P>', N'hsg', NULL, 74, CAST(0x0000A6F40176E557 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (52, N'国家互联网信息办查处并公布一批违法违规网站', N'站内新闻', N'&nbsp;&nbsp;&nbsp; 新华网北京６月１９日电&nbsp; 记者从国家互联网信息办公室获悉，“中国预防腐败网”、“中国预防腐败调查研究中心”等４７家招摇撞骗，打着“维权”、“反腐”等旗号进行敲诈勒索违法活动的<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">网站</SPAN>近日被依法关闭。今年３月份以来，已有８９家招摇撞骗、敲诈勒索网站被国家互联网信息办协调相关部门依法关闭。
<P>&nbsp;&nbsp;&nbsp;&nbsp;记者了解到，此次关闭的４７家网站和此前被关闭的网站特点基本相似，都是假冒国家机关或公益组织名义，以“反腐”、“<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">维权</SPAN>”、“监督”为名招摇撞骗、敲诈勒索，如“中国反腐败网”、“全国网络反腐中心”、“中国反腐败调查中心”、“中国预防腐败网”、“预防腐败通讯网”、“维权防骗网”、“中国民声网”、“中华新闻监督网”等。还有的以承包记者站、培训会员或记者为名，以数千至数万元不等价格叫卖假记者站牌和假记者证，如“中国行政司法监督调查网”、“中国廉政法制网”等。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;国家互联网信息办网络新闻协调局负责人指出，这些招摇撞骗、敲诈勒索网站或以刊载负面新闻要挟，向有关单位索取所谓“赞助费”、“广告费”或“会员费”；或假冒国家机关网站，实施敲诈、诈骗等违法行为，甚至派专人到北京等地“拉生意”，骗取钱财；部分网站还结成“经营同盟”，相互勾结，对有关单位、企业和个人实施敲诈，情节恶劣，危害严重。依法关闭这些网站，得到社会各界支持。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;这位负责人强调，依法打击招摇撞骗、敲诈勒索网站是广大人民群众的强烈呼声，国家互联网信息办将继续协调各有关部门，依法查处这类网站，维护正常网络传播秩序。无论是单位、企业还是个人受害者，都可以向当地公安机关报案，反映被敲诈勒索情况。</P>', N'hsg', NULL, 0, CAST(0x0000A6F40176E559 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (53, N'苍南：全力以赴打响“火灾隐患集中区域”整治战役', N'站内新闻', N'<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; LAYOUT-GRID-MODE: char; TEXT-INDENT: 27.2pt; LINE-HEIGHT: 28pt; TEXT-ALIGN: left; mso-char-indent-count: 2.0; mso-line-height-rule: exactly; mso-pagination: widow-orphan; tab-stops: 288.0pt; mso-layout-grid-align: none" align=left><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; LETTER-SPACING: -0.2pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">自公安部今年<SPAN lang=EN-US>9</SPAN>月<SPAN lang=EN-US>26</SPAN>日开展“清剿火患”战役以来，苍南县以此战役“大排查、大整治”为契机，为扎实推进火灾隐患“重灾区”消防安全整治工作，集中解决长期困扰消防安全管理工作的重难点问题，根据市人民政府《关于对全市<SPAN lang=EN-US>26</SPAN>个火灾隐患集中区域进行挂牌督办整治的通报》（温政发<SPAN lang=EN-US>[2011]59</SPAN>号精神，苍南县龙港镇、钱库镇、宜山镇、藻溪镇等四个乡镇被列位市政府挂牌督办整治单位，为了彻底消除存在的火灾隐患，早日摘牌销案，四大乡镇分别出台整治措施，下决心彻底排查，与此同时，县人民政府在结合各乡镇前期整治隐患工作的基础上，也制定出台了《苍南县火灾隐患集中区域整治方案》，为整治工作“推波助澜”。<SPAN lang=EN-US><?xml:namespace prefix = o ns = "urn:schemas-microsoft-com:office:office" /><o:p></o:p></SPAN></SPAN></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; LAYOUT-GRID-MODE: char; TEXT-INDENT: 27.2pt; LINE-HEIGHT: 28pt; TEXT-ALIGN: left; mso-char-indent-count: 2.0; mso-line-height-rule: exactly; mso-pagination: widow-orphan; tab-stops: 288.0pt; mso-layout-grid-align: none" align=left><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; LETTER-SPACING: -0.2pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">龙港镇的隐患整治行动是全县整个火灾隐患集中区域整治战役的一个缩影。龙港镇经济发展迅速，既是苍南传统民居建筑的聚集地，木楼梯通天房林立，也是世界印刷、包装工艺产业的先进代表，大大小小的化工原料堆积，并吸引庞大的外来务工人员聚集，导致人口密集度急剧上升。但长期以来，消防公共设施缺乏，连基本的消防通道、消防栓等设施也难以达到现代城市的要求，群众不能很好地掌握消防知识，致使隐患日益突出，为汲取“<SPAN lang=EN-US>4-11</SPAN>”亡人火灾教训，彻底扭转这一局面，早日摘掉市政府挂牌督办整治单位的帽子，龙港镇从明确政府机构责任、制定行业整治标准、</SPAN><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体; mso-bidi-font-weight: bold">建设消防管理站和强化消防宣传力量</SPAN><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; LETTER-SPACING: -0.2pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">等几个方面下足功夫。</SPAN><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">苍南县县委常委、龙港镇委书记林万乐，公安局副局长陈学超等多次带队深入龙港进行实地隐患检查。龙港镇各职能部门明确职责，落实网格化责任制度，使龙港镇每一街道、每一工厂、每一大型场所都有专门的政府责任人；龙港支柱产业也召开理事会，根据消防部门制定的行业整治标准，配合动员部署消防整治行动；设立消防管理站，</SPAN><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体; mso-ansi-language: ZH-CN">及时解决了全县乡镇无正常消防管理机构的窘境，妥善处理了消防工作落实不见效、不到位的问题；强化消防宣传教育，龙港镇街头</SPAN><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">一群身披“消防志愿者”授带手捧宣传资料的消防志愿服务者正穿梭在大街小巷，开展消防宣传，为“清剿火患”战役营造良好宣传氛围，号召全民参与到消防工作中来。龙港镇从上到下全体编织一张巨大的网，一张隐患整治的安全网，无论是高楼大厦，还是低矮平房，无论是重要机关，还是寻常百姓，都是这张巨网上的一个结，都在为龙港<SPAN style="LETTER-SPACING: -0.2pt">早日摘牌销案做努力。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></SPAN></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; LAYOUT-GRID-MODE: char; TEXT-INDENT: 27.2pt; LINE-HEIGHT: 28pt; TEXT-ALIGN: left; mso-char-indent-count: 2.0; mso-line-height-rule: exactly; mso-pagination: widow-orphan; tab-stops: 288.0pt; mso-layout-grid-align: none" align=left><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; LETTER-SPACING: -0.2pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">龙港镇只是四个火灾隐患重点区域之一，其他的乡镇也分别根据自身产业隐患特点，“量身定做”采取相关的整治措施。如钱库镇望里办事处采取在辖区气流纺行业禁烟，声势浩大地开展农村消防安全大宣传，开设消防安全网站等多举措致力消防隐患整治行动。</SPAN><SPAN lang=EN-US style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体"><o:p></o:p></SPAN></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 27.2pt; LINE-HEIGHT: 28pt; TEXT-ALIGN: left; mso-char-indent-count: 2.0; mso-line-height-rule: exactly; mso-pagination: widow-orphan" align=left><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; LETTER-SPACING: -0.2pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">此时，加上县政府</SPAN><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体; mso-ansi-language: ZH-CN">出台</SPAN><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; LETTER-SPACING: -0.2pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">下发此《</SPAN><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体; mso-ansi-language: ZH-CN">方案》将及时有效地加大目前全县</SPAN><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; LETTER-SPACING: -0.2pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">火灾隐患集中区域消防整治力度</SPAN><SPAN style="FONT-SIZE: 14pt; FONT-FAMILY: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体; mso-ansi-language: ZH-CN">，为四个乡镇整治隐患工作推波助澜，为各乡镇积极投入整改资金到重大火灾隐患的整改工作提供保证，为预防恶性火灾事故发生、减少火灾损失、营造良好的消防安全环境奠定了坚实的基础。<o:p></o:p></SPAN></P><BR>', N'hsg', NULL, 16, CAST(0x0000A6F40176E55B AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (54, N'关于成立钱库广电站有线电视网络升级改造工程领导小组的通知', N'站内新闻', N'<DIV align=center>苍钱广电<B>〔</B>2 0 1 0<B>〕</B>5号</DIV>
<DIV align=center>&nbsp;</DIV>
<DIV align=center>关于成立钱库广电站有线电视</DIV>
<DIV align=center>网络升级改造工程领导小组的通知</DIV>
<DIV><B>各乡镇广电分站、各部、室：</B></DIV>
<DIV>为了钱库广电站有线电视网络升级改造工程的顺利实施，加强工程的组织领导，经站长办公会议研究，决定成立钱库广电站有线电视网络升级改造工程领导小组，其成员名单如下:</DIV>
<DIV>组&nbsp; 长:黄定伟</DIV>
<DIV>副组长:陈志春&nbsp; 吴作亮</DIV>
<DIV>成&nbsp; 员:黄开左&nbsp; 钱克旺&nbsp; 李道银</DIV>
<DIV>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 李其发&nbsp; 项&nbsp; 雷&nbsp; 金亦栋</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 领导小组下设办公室, 钱克旺同志兼任办公室主任。</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;苍南广播电视台</DIV>
<DIV>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 钱库广播电视站</DIV>
<DIV>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二0一0年五月二十五日</DIV>
<DIV>&nbsp;</DIV>
<TABLE cellSpacing=0 cellPadding=0 border=1>
<TBODY>
<TR>
<TD vAlign=top width=528>
<DIV>抄报：苍南广播电视台、钱库镇宣传办、组织办</DIV></TD></TR>
<TR>
<TD vAlign=top width=528>
<DIV>抄送：各乡镇广电站、各部、室</DIV></TD></TR>
<TR>
<TD vAlign=top width=528>
<DIV>钱库广电站办公室&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2010年5月25日印发</DIV></TD></TR></TBODY></TABLE>
<DIV>&nbsp;</DIV>', N'hsg', NULL, 16, CAST(0x0000A6F40176E55D AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (55, N'快递业务的介绍', N'业务介绍', N'快递业务的介绍', N'hsg', N'', 2, CAST(0x0000A6F4017C265C AS DateTime))
SET IDENTITY_INSERT [dbo].[xinwentongzhi] OFF
/****** Object:  Table [dbo].[wangdianxinxi]    Script Date: 01/08/2017 16:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wangdianxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[bianhao] [varchar](50) NULL,
	[mingcheng] [varchar](50) NULL,
	[shengfen] [varchar](50) NULL,
	[shixian] [varchar](50) NULL,
	[dizhi] [varchar](300) NULL,
	[zhaopian] [varchar](50) NULL,
	[dianhua] [varchar](50) NULL,
	[youbian] [varchar](50) NULL,
	[chuanzhen] [varchar](50) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[wangdianxinxi] ON
INSERT [dbo].[wangdianxinxi] ([ID], [bianhao], [mingcheng], [shengfen], [shixian], [dizhi], [zhaopian], [dianhua], [youbian], [chuanzhen], [beizhu], [addtime]) VALUES (1, N'0001', N'浙湖分网点', N'浙江省', N'湖州市', N'浙江湖州市', N'upload/1483801114557.jpg', N'64705851', N'325600', N'12345', N'456456', CAST(0x0000A6F000A6CF20 AS DateTime))
INSERT [dbo].[wangdianxinxi] ([ID], [bianhao], [mingcheng], [shengfen], [shixian], [dizhi], [zhaopian], [dianhua], [youbian], [chuanzhen], [beizhu], [addtime]) VALUES (2, N'0002', N'浙杭分网站', N'浙江省', N'杭州市', N'浙江杭州市', N'upload/1483801100841.png', N'64805215', N'325800', N'12345', N'', CAST(0x0000A6F401755C78 AS DateTime))
INSERT [dbo].[wangdianxinxi] ([ID], [bianhao], [mingcheng], [shengfen], [shixian], [dizhi], [zhaopian], [dianhua], [youbian], [chuanzhen], [beizhu], [addtime]) VALUES (3, N'0003', N'浙绍分网点', N'浙江省', N'绍兴市', N'浙江杭州市', N'upload/1483801075096.jpg', N'64705851', N'325800', N'12345', N'', CAST(0x0000A6F40175AD54 AS DateTime))
INSERT [dbo].[wangdianxinxi] ([ID], [bianhao], [mingcheng], [shengfen], [shixian], [dizhi], [zhaopian], [dianhua], [youbian], [chuanzhen], [beizhu], [addtime]) VALUES (4, N'0004', N'浙湖分网点', N'浙江省', N'湖州市', N'浙江湖州市', N'upload/1483801057014.jpg', N'64705851', N'325800', N'', N'33333', CAST(0x0000A6F40175FE30 AS DateTime))
SET IDENTITY_INSERT [dbo].[wangdianxinxi] OFF
/****** Object:  Table [dbo].[shixian]    Script Date: 01/08/2017 16:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shixian](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[shengfen] [varchar](50) NULL,
	[shixian] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[shixian] ON
INSERT [dbo].[shixian] ([ID], [shengfen], [shixian], [addtime]) VALUES (1, N'江苏省', N'南京市', CAST(0x0000A6F000A3FC14 AS DateTime))
INSERT [dbo].[shixian] ([ID], [shengfen], [shixian], [addtime]) VALUES (2, N'浙江省', N'杭州市', CAST(0x0000A6F000A408F8 AS DateTime))
INSERT [dbo].[shixian] ([ID], [shengfen], [shixian], [addtime]) VALUES (3, N'江苏省', N'苏州市', CAST(0x0000A6F000A415DC AS DateTime))
INSERT [dbo].[shixian] ([ID], [shengfen], [shixian], [addtime]) VALUES (4, N'江苏省', N'无锡市', CAST(0x0000A6F000A41E10 AS DateTime))
INSERT [dbo].[shixian] ([ID], [shengfen], [shixian], [addtime]) VALUES (5, N'江苏省', N'江阴市', CAST(0x0000A6F000A42518 AS DateTime))
INSERT [dbo].[shixian] ([ID], [shengfen], [shixian], [addtime]) VALUES (6, N'浙江省', N'绍兴市', CAST(0x0000A6F000A42E78 AS DateTime))
INSERT [dbo].[shixian] ([ID], [shengfen], [shixian], [addtime]) VALUES (8, N'湖南省', N'长沙县', CAST(0x0000A6F4017B950C AS DateTime))
SET IDENTITY_INSERT [dbo].[shixian] OFF
/****** Object:  Table [dbo].[shengfen]    Script Date: 01/08/2017 16:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shengfen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[shengfen] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[shengfen] ON
INSERT [dbo].[shengfen] ([ID], [shengfen], [addtime]) VALUES (1, N'浙江省', CAST(0x0000A6F0000203A0 AS DateTime))
INSERT [dbo].[shengfen] ([ID], [shengfen], [addtime]) VALUES (2, N'福建省', CAST(0x0000A6F000021C3C AS DateTime))
INSERT [dbo].[shengfen] ([ID], [shengfen], [addtime]) VALUES (3, N'江苏省', CAST(0x0000A6F0000226C8 AS DateTime))
INSERT [dbo].[shengfen] ([ID], [shengfen], [addtime]) VALUES (4, N'湖南省', CAST(0x0000A6F4017B8828 AS DateTime))
SET IDENTITY_INSERT [dbo].[shengfen] OFF
/****** Object:  Table [dbo].[liuyanban]    Script Date: 01/08/2017 16:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[liuyanban](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cheng] [varchar](50) NULL,
	[xingbie] [varchar](2) NULL,
	[QQ] [varchar](50) NULL,
	[youxiang] [varchar](50) NULL,
	[dianhua] [varchar](50) NULL,
	[neirong] [varchar](500) NULL,
	[addtime] [datetime] NULL,
	[huifuneirong] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kuaidixinxi]    Script Date: 01/08/2017 16:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kuaidixinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[yundanhao] [varchar](50) NULL,
	[kuaijianleixing] [varchar](50) NULL,
	[yuandizhi] [varchar](300) NULL,
	[mudedi] [varchar](300) NULL,
	[shoujianrenxingming] [varchar](50) NULL,
	[shoujianrenshouji] [varchar](50) NULL,
	[jiage] [varchar](50) NULL,
	[dangqianzhuangtai] [varchar](50) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[kuaidixinxi] ON
INSERT [dbo].[kuaidixinxi] ([ID], [yundanhao], [kuaijianleixing], [yuandizhi], [mudedi], [shoujianrenxingming], [shoujianrenshouji], [jiage], [dangqianzhuangtai], [beizhu], [addtime]) VALUES (1, N'01072255226191', N'普快', N'浙江省宁波市xx区', N'浙江省杭州市xx区', N'陈海燕', N'13868780450', N'3', N'未发货', N'33333', CAST(0x0000A6F40179D564 AS DateTime))
INSERT [dbo].[kuaidixinxi] ([ID], [yundanhao], [kuaijianleixing], [yuandizhi], [mudedi], [shoujianrenxingming], [shoujianrenshouji], [jiage], [dangqianzhuangtai], [beizhu], [addtime]) VALUES (2, N'01072255431400', N'特快', N'浙江省丽水市xx区', N'浙江宁波市XX区', N'林海燕', N'13868780450', N'3', N'未发货', N'3333', CAST(0x0000A6F4017A069C AS DateTime))
INSERT [dbo].[kuaidixinxi] ([ID], [yundanhao], [kuaijianleixing], [yuandizhi], [mudedi], [shoujianrenxingming], [shoujianrenshouji], [jiage], [dangqianzhuangtai], [beizhu], [addtime]) VALUES (3, N'01072302181593', N'特快', N'江苏州南京市XX区', N'浙江省杭州市XX区', N'陈晨 ', N'13868780450', N'5', N'未发货', N'333', CAST(0x0000A6F4017BEA98 AS DateTime))
SET IDENTITY_INSERT [dbo].[kuaidixinxi] OFF
/****** Object:  Table [dbo].[hsgwuxianfenlei]    Script Date: 01/08/2017 16:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hsgwuxianfenlei](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fid] [int] NULL,
	[fname] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[hsgwuxianfenlei] ON
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (1, 0, N'A类')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (2, 0, N'B类')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (3, 0, N'中国')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (4, 1, N'A1')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (5, 2, N'B1')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (6, 3, N'浙江')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (7, 4, N'A11')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (8, 5, N'B11')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (9, 5, N'B12')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (10, 6, N'杭州')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (11, 10, N'滨江区')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (13, 1, N'A2')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (14, 13, N'A21')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (15, 7, N'A111')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (16, 3, N'福建')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (17, 3, N'广东')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (18, 3, N'广西')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (19, 3, N'江苏')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (20, 19, N'南京')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (21, 19, N'无锡')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (22, 19, N'苏州')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (23, 19, N'南通')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (24, 6, N'宁波')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (25, 6, N'温州')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (26, 6, N'嘉兴')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (27, 6, N'绍兴')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (28, 22, N'吴江区')
INSERT [dbo].[hsgwuxianfenlei] ([ID], [fid], [fname]) VALUES (29, 22, N'吴中区')
SET IDENTITY_INSERT [dbo].[hsgwuxianfenlei] OFF
/****** Object:  Table [dbo].[dx]    Script Date: 01/08/2017 16:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dx](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[leibie] [varchar](50) NULL,
	[content] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dx] ON
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (1, N'系统公告', N'<P>&nbsp;&nbsp;&nbsp; 欢迎大家登陆我站，我站主要是为广大朋友精心制作的一个系统，希望大家能够在我站获得一个好心情，谢谢！</P>
<P>&nbsp;&nbsp;&nbsp; 自强不息，海纳百川，努力学习！</P>')
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (2, N'系统简介', N'系统简介')
SET IDENTITY_INSERT [dbo].[dx] OFF
/****** Object:  Table [dbo].[allusers]    Script Date: 01/08/2017 16:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[allusers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[pwd] [varchar](50) NULL,
	[cx] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[allusers] ON
INSERT [dbo].[allusers] ([ID], [username], [pwd], [cx], [addtime]) VALUES (1, N'hsg', N'hsg', N'超级管理员', CAST(0x0000A6EF017E80A6 AS DateTime))
SET IDENTITY_INSERT [dbo].[allusers] OFF
/****** Object:  Default [DF__youqingli__addti__023D5A04]    Script Date: 01/08/2017 16:35:26 ******/
ALTER TABLE [dbo].[youqinglianjie] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__yonghuzhu__addti__07F6335A]    Script Date: 01/08/2017 16:35:26 ******/
ALTER TABLE [dbo].[yonghuzhuce] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__yonghuzhuc__issh__08EA5793]    Script Date: 01/08/2017 16:35:26 ******/
ALTER TABLE [dbo].[yonghuzhuce] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__xinwenton__tianj__0519C6AF]    Script Date: 01/08/2017 16:35:26 ******/
ALTER TABLE [dbo].[xinwentongzhi] ADD  DEFAULT ('hsg') FOR [tianjiaren]
GO
/****** Object:  Default [DF__xinwenton__addti__060DEAE8]    Script Date: 01/08/2017 16:35:26 ******/
ALTER TABLE [dbo].[xinwentongzhi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__wangdianx__addti__1B0907CE]    Script Date: 01/08/2017 16:35:26 ******/
ALTER TABLE [dbo].[wangdianxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__shixian__addtime__164452B1]    Script Date: 01/08/2017 16:35:26 ******/
ALTER TABLE [dbo].[shixian] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__shengfen__addtim__0CBAE877]    Script Date: 01/08/2017 16:35:26 ******/
ALTER TABLE [dbo].[shengfen] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__liuyanban__addti__0AD2A005]    Script Date: 01/08/2017 16:35:26 ******/
ALTER TABLE [dbo].[liuyanban] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__kuaidixin__addti__32E0915F]    Script Date: 01/08/2017 16:35:26 ******/
ALTER TABLE [dbo].[kuaidixinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__allusers__cx__7E6CC920]    Script Date: 01/08/2017 16:35:26 ******/
ALTER TABLE [dbo].[allusers] ADD  DEFAULT ('普通管理员') FOR [cx]
GO
/****** Object:  Default [DF__allusers__addtim__7F60ED59]    Script Date: 01/08/2017 16:35:26 ******/
ALTER TABLE [dbo].[allusers] ADD  DEFAULT (getdate()) FOR [addtime]
GO
