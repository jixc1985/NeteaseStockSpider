/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : neteasestock

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-02-19 22:03:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tj_cznl
-- ----------------------------
DROP TABLE IF EXISTS `tj_cznl`;
CREATE TABLE `tj_cznl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `avg_sr` decimal(10,2) DEFAULT NULL,
  `avg_lr` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_cznl
-- ----------------------------
DROP TABLE IF EXISTS `t_cznl`;
CREATE TABLE `t_cznl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `zyywzzl` decimal(10,2) DEFAULT NULL COMMENT '主营业务收入增长率',
  `jlrzzl` decimal(10,2) DEFAULT NULL COMMENT '净利润增长率',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160020 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_lrb
-- ----------------------------
DROP TABLE IF EXISTS `t_lrb`;
CREATE TABLE `t_lrb` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) NOT NULL,
  `date` date NOT NULL,
  `yyzsr` decimal(10,2) DEFAULT NULL COMMENT '营业总收入',
  `yysr` decimal(10,2) DEFAULT NULL COMMENT '营业收入',
  `lxsr` decimal(10,2) DEFAULT NULL COMMENT '利息收入',
  `yzbf` decimal(10,2) DEFAULT NULL COMMENT '已赚保费',
  `sxfjyjsr` decimal(10,2) DEFAULT NULL COMMENT '手续费及佣金收入',
  `fdcxssr` decimal(10,2) DEFAULT NULL COMMENT '房地产销售收入',
  `qtywsr` decimal(10,2) DEFAULT NULL COMMENT '其他业务收入',
  `yyzcb` decimal(10,2) DEFAULT NULL COMMENT '营业总成本',
  `yycb` decimal(10,2) DEFAULT NULL COMMENT '营业成本',
  `lxzc` decimal(10,2) DEFAULT NULL COMMENT '利息支出',
  `sxfjyjzc` decimal(10,2) DEFAULT NULL COMMENT '手续费及佣金支出',
  `fdcxscb` decimal(10,2) DEFAULT NULL COMMENT '房地产销售成本',
  `yffy` decimal(10,2) DEFAULT NULL COMMENT '研发费用',
  `tbj` decimal(10,2) DEFAULT NULL COMMENT '退保金',
  `pfzcje` decimal(10,2) DEFAULT NULL COMMENT '赔付支出净额',
  `tqbxhtzbjje` decimal(10,2) DEFAULT NULL COMMENT '提取保险合同准备金净额',
  `bdhlzc` decimal(10,2) DEFAULT NULL COMMENT '保单红利支出',
  `fbfy` decimal(10,2) DEFAULT NULL COMMENT '分保费用',
  `qtywcb` decimal(10,2) DEFAULT NULL COMMENT '其他业务成本',
  `yysjjfj` decimal(10,2) DEFAULT NULL COMMENT '营业税金及附加',
  `xsfy` decimal(10,2) DEFAULT NULL COMMENT '销售费用',
  `glfy` decimal(10,2) DEFAULT NULL COMMENT '管理费用',
  `cwfy` decimal(10,2) DEFAULT NULL COMMENT '财务费用',
  `zcjzss` decimal(10,2) DEFAULT NULL COMMENT '资产减值损失',
  `gyjzbdsy` decimal(10,2) DEFAULT NULL COMMENT '公允价值变动收益',
  `tzsy` decimal(10,2) DEFAULT NULL COMMENT '投资收益',
  `dyyqyhhyqydtzsy` decimal(10,2) DEFAULT NULL COMMENT '对联营企业和合营企业的投资收益',
  `hdsy` decimal(10,2) DEFAULT NULL COMMENT '汇兑收益',
  `qhsy` decimal(10,2) DEFAULT NULL COMMENT '期货损益',
  `tgsy` decimal(10,2) DEFAULT NULL COMMENT '托管收益',
  `btsr` decimal(10,2) DEFAULT NULL COMMENT '补贴收入',
  `qtywlr` decimal(10,2) DEFAULT NULL COMMENT '其他业务利润',
  `yylr` decimal(10,2) DEFAULT NULL COMMENT '营业利润',
  `yywsr` decimal(10,2) DEFAULT NULL COMMENT '营业外收入',
  `yywzc` decimal(10,2) DEFAULT NULL COMMENT '营业外支出',
  `fldzcczss` decimal(10,2) DEFAULT NULL COMMENT '非流动资产处置损失',
  `lrze` decimal(10,2) DEFAULT NULL COMMENT '利润总额',
  `sdsfy` decimal(10,2) DEFAULT NULL COMMENT '所得税费用',
  `wqrtzss` decimal(10,2) DEFAULT NULL COMMENT '未确认投资损失',
  `jlr` decimal(10,2) DEFAULT NULL COMMENT '净利润',
  `gsymgssyzdjlr` decimal(10,2) DEFAULT NULL COMMENT '归属于母公司所有者的净利润',
  `bhbfzhbqsxjlr` decimal(10,2) DEFAULT NULL COMMENT '被合并方在合并前实现净利润',
  `ssgdsy` decimal(10,2) DEFAULT NULL COMMENT '少数股东损益',
  `jbmgsy` decimal(10,2) DEFAULT NULL COMMENT '基本每股收益',
  `xsmgsy` decimal(10,2) DEFAULT NULL COMMENT '稀释每股收益',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=239623 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_xjllb
-- ----------------------------
DROP TABLE IF EXISTS `t_xjllb`;
CREATE TABLE `t_xjllb` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) NOT NULL,
  `date` date NOT NULL,
  `xssptglwsddxj` decimal(10,2) DEFAULT NULL COMMENT '销售商品、提供劳务收到的现金',
  `khckhtycfkxjzje` decimal(10,2) DEFAULT NULL COMMENT '客户存款和同业存放款项净增加额',
  `xzyyhjkjzje` decimal(10,2) DEFAULT NULL COMMENT '向中央银行借款净增加额',
  `xqtjrjgcrzjjzje` decimal(10,2) DEFAULT NULL COMMENT '向其他金融机构拆入资金净增加额',
  `sdybxhtbfqddxj` decimal(10,2) DEFAULT NULL COMMENT '收到原保险合同保费取得的现金',
  `sdzbxywxjje` decimal(10,2) DEFAULT NULL COMMENT '收到再保险业务现金净额',
  `bhcjjtzkjzje` decimal(10,2) DEFAULT NULL COMMENT '保户储金及投资款净增加额',
  `czjyxjrzcjzje` decimal(10,2) DEFAULT NULL COMMENT '处置交易性金融资产净增加额',
  `sqlxsxfjyjdxj` decimal(10,2) DEFAULT NULL COMMENT '收取利息、手续费及佣金的现金',
  `crzjjzje` decimal(10,2) DEFAULT NULL COMMENT '拆入资金净增加额',
  `hgywzjjzje` decimal(10,2) DEFAULT NULL COMMENT '回购业务资金净增加额',
  `sddsffh` decimal(10,2) DEFAULT NULL COMMENT '收到的税费返还',
  `sddqtyjyhdygdxj` decimal(10,2) DEFAULT NULL COMMENT '收到的其他与经营活动有关的现金',
  `jyhdxjlrxj` decimal(10,2) DEFAULT NULL COMMENT '经营活动现金流入小计',
  `gmspjslwzfdxj` decimal(10,2) DEFAULT NULL COMMENT '购买商品、接受劳务支付的现金',
  `khdkjdkjzje` decimal(10,2) DEFAULT NULL COMMENT '客户贷款及垫款净增加额',
  `cfzyyhhtykxjzje` decimal(10,2) DEFAULT NULL COMMENT '存放中央银行和同业款项净增加额',
  `zfybxhtpfkxdxj` decimal(10,2) DEFAULT NULL COMMENT '支付原保险合同赔付款项的现金',
  `zflxsxfjyjdxj` decimal(10,2) DEFAULT NULL COMMENT '支付利息、手续费及佣金的现金',
  `zfbdhldxj` decimal(10,2) DEFAULT NULL COMMENT '支付保单红利的现金',
  `zfgzgyjwzgzfdxj` decimal(10,2) DEFAULT NULL COMMENT '支付给职工以及为职工支付的现金',
  `zfdgxsf` decimal(10,2) DEFAULT NULL COMMENT '支付的各项税费',
  `zfdqtyjyhdygdxj` decimal(10,2) DEFAULT NULL COMMENT '支付的其他与经营活动有关的现金',
  `jyhdxjlcxj` decimal(10,2) DEFAULT NULL COMMENT '经营活动现金流出小计',
  `jyhdcsdxjllje` decimal(10,2) DEFAULT NULL COMMENT '经营活动产生的现金流量净额',
  `shtzssddxj` decimal(10,2) DEFAULT NULL COMMENT '收回投资所收到的现金',
  `qdtzsyssddxj` decimal(10,2) DEFAULT NULL COMMENT '取得投资收益所收到的现金',
  `czgdzcwxzchqtcqzcsshdxjje` decimal(10,2) DEFAULT NULL COMMENT '处置固定资产、无形资产和其他长期资产所收回的现金净额',
  `czzgsjqtyydwsddxjje` decimal(10,2) DEFAULT NULL COMMENT '处置子公司及其他营业单位收到的现金净额',
  `sddqtytzhdygdxj` decimal(10,2) DEFAULT NULL COMMENT '收到的其他与投资活动有关的现金',
  `jszyhdqckssddxj` decimal(10,2) DEFAULT NULL COMMENT '减少质押和定期存款所收到的现金',
  `tzhdxjlrxj` decimal(10,2) DEFAULT NULL COMMENT '投资活动现金流入小计',
  `gjgdzcwxzchqtcqzcszfdxj` decimal(10,2) DEFAULT NULL COMMENT '购建固定资产、无形资产和其他长期资产所支付的现金',
  `tzszfdxj` decimal(10,2) DEFAULT NULL COMMENT '投资所支付的现金',
  `zydkjzje` decimal(10,2) DEFAULT NULL COMMENT '质押贷款净增加额',
  `qdzgsjqtyydwzfdxjje` decimal(10,2) DEFAULT NULL COMMENT '取得子公司及其他营业单位支付的现金净额',
  `zfdqtytzhdygdxj` decimal(10,2) DEFAULT NULL COMMENT '支付的其他与投资活动有关的现金',
  `zjzyhdqckszfdxj` decimal(10,2) DEFAULT NULL COMMENT '增加质押和定期存款所支付的现金',
  `tzhdxjlcxj` decimal(10,2) DEFAULT NULL COMMENT '投资活动现金流出小计',
  `tzhdcsdxjllje` decimal(10,2) DEFAULT NULL COMMENT '投资活动产生的现金流量净额',
  `xstzsddxj` decimal(10,2) DEFAULT NULL COMMENT '吸收投资收到的现金',
  `zgsxsssgdtzsddxj` decimal(10,2) DEFAULT NULL COMMENT '子公司吸收少数股东投资收到的现金',
  `qdjksddxj` decimal(10,2) DEFAULT NULL COMMENT '取得借款收到的现金',
  `fxzqsddxj` decimal(10,2) DEFAULT NULL COMMENT '发行债券收到的现金',
  `sdqtyczhdygdxj` decimal(10,2) DEFAULT NULL COMMENT '收到其他与筹资活动有关的现金',
  `czhdxjlrxj` decimal(10,2) DEFAULT NULL COMMENT '筹资活动现金流入小计',
  `chzwzfdxj` decimal(10,2) DEFAULT NULL COMMENT '偿还债务支付的现金',
  `fpgllrhcflxszfdxj` decimal(10,2) DEFAULT NULL COMMENT '分配股利、利润或偿付利息所支付的现金',
  `zgszfgssgddgllr` decimal(10,2) DEFAULT NULL COMMENT '子公司支付给少数股东的股利、利润',
  `zfqtyczhdygdxj` decimal(10,2) DEFAULT NULL COMMENT '支付其他与筹资活动有关的现金',
  `czhdxjlcxj` decimal(10,2) DEFAULT NULL COMMENT '筹资活动现金流出小计',
  `czhdcsdxjllje` decimal(10,2) DEFAULT NULL COMMENT '筹资活动产生的现金流量净额',
  `hlbddxjjxjdjwdyx` decimal(10,2) DEFAULT NULL COMMENT '汇率变动对现金及现金等价物的影响',
  `xjjxjdjwjzje` decimal(10,2) DEFAULT NULL COMMENT '现金及现金等价物净增加额',
  `qcxjjxjdjwye` decimal(10,2) DEFAULT NULL COMMENT '期初现金及现金等价物余额',
  `qmxjjxjdjwye` decimal(10,2) DEFAULT NULL COMMENT '期末现金及现金等价物余额',
  `jlr` decimal(10,2) DEFAULT NULL COMMENT '净利润',
  `ssgdsy` decimal(10,2) DEFAULT NULL COMMENT '少数股东损益',
  `wqrdtzss` decimal(10,2) DEFAULT NULL COMMENT '未确认的投资损失',
  `zcjzzb` decimal(10,2) DEFAULT NULL COMMENT '资产减值准备',
  `gdzczjyqzczhscxwzzj` decimal(10,2) DEFAULT NULL COMMENT '固定资产折旧、油气资产折耗、生产性物资折旧',
  `wxzctx` decimal(10,2) DEFAULT NULL COMMENT '无形资产摊销',
  `cqdtfytx` decimal(10,2) DEFAULT NULL COMMENT '长期待摊费用摊销',
  `dtfydjs` decimal(10,2) DEFAULT NULL COMMENT '待摊费用的减少',
  `ytfydzj` decimal(10,2) DEFAULT NULL COMMENT '预提费用的增加',
  `czgdzcwxzchqtcqzcdss` decimal(10,2) DEFAULT NULL COMMENT '处置固定资产、无形资产和其他长期资产的损失',
  `gdzcbfss` decimal(10,2) DEFAULT NULL COMMENT '固定资产报废损失',
  `gyjzbdss` decimal(10,2) DEFAULT NULL COMMENT '公允价值变动损失',
  `dysyzj` decimal(10,2) DEFAULT NULL COMMENT '递延收益增加',
  `yjfz` decimal(10,2) DEFAULT NULL COMMENT '预计负债',
  `cwfy` decimal(10,2) DEFAULT NULL COMMENT '财务费用',
  `tzss` decimal(10,2) DEFAULT NULL COMMENT '投资损失',
  `dysdszcjs` decimal(10,2) DEFAULT NULL COMMENT '递延所得税资产减少',
  `dysdsfzzj` decimal(10,2) DEFAULT NULL COMMENT '递延所得税负债增加',
  `chdjs` decimal(10,2) DEFAULT NULL COMMENT '存货的减少',
  `jyxysxmdjs` decimal(10,2) DEFAULT NULL COMMENT '经营性应收项目的减少',
  `jyxyfxmdzj` decimal(10,2) DEFAULT NULL COMMENT '经营性应付项目的增加',
  `ywgswjskdjs` decimal(10,2) DEFAULT NULL COMMENT '已完工尚未结算款的减少',
  `yjsswwgkdzj` decimal(10,2) DEFAULT NULL COMMENT '已结算尚未完工款的增加',
  `qt` decimal(10,2) DEFAULT NULL COMMENT '其他',
  `jyhdcsxjllje` decimal(10,2) DEFAULT NULL COMMENT '经营活动产生现金流量净额',
  `zwzwzb` decimal(10,2) DEFAULT NULL COMMENT '债务转为资本',
  `ynndqdkzhgszq` decimal(10,2) DEFAULT NULL COMMENT '一年内到期的可转换公司债券',
  `rzzrgdzc` decimal(10,2) DEFAULT NULL COMMENT '融资租入固定资产',
  `xjdqmye` decimal(10,2) DEFAULT NULL COMMENT '现金的期末余额',
  `xjdqcye` decimal(10,2) DEFAULT NULL COMMENT '现金的期初余额',
  `xjdjwdqmye` decimal(10,2) DEFAULT NULL COMMENT '现金等价物的期末余额',
  `xjdjwdqcye` decimal(10,2) DEFAULT NULL COMMENT '现金等价物的期初余额',
  `xjjxjdjwdjzje` decimal(10,2) DEFAULT NULL COMMENT '现金及现金等价物的净增加额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119273 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_zcfzb
-- ----------------------------
DROP TABLE IF EXISTS `t_zcfzb`;
CREATE TABLE `t_zcfzb` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) NOT NULL,
  `date` date NOT NULL,
  `hbzj` decimal(10,2) DEFAULT NULL COMMENT '货币资金',
  `jsbfj` decimal(10,2) DEFAULT NULL COMMENT '结算备付金',
  `cczj` decimal(10,2) DEFAULT NULL COMMENT '拆出资金',
  `jyxjrzc` decimal(10,2) DEFAULT NULL COMMENT '交易性金融资产',
  `ysjrzc` decimal(10,2) DEFAULT NULL COMMENT '衍生金融资产',
  `yspj` decimal(10,2) DEFAULT NULL COMMENT '应收票据',
  `yszk` decimal(10,2) DEFAULT NULL COMMENT '应收账款',
  `yfkx` decimal(10,2) DEFAULT NULL COMMENT '预付款项',
  `ysbf` decimal(10,2) DEFAULT NULL COMMENT '应收保费',
  `ysfbzk` decimal(10,2) DEFAULT NULL COMMENT '应收分保账款',
  `ysfbhtzbj` decimal(10,2) DEFAULT NULL COMMENT '应收分保合同准备金',
  `yslx` decimal(10,2) DEFAULT NULL COMMENT '应收利息',
  `ysgl` decimal(10,2) DEFAULT NULL COMMENT '应收股利',
  `qtysk` decimal(10,2) DEFAULT NULL COMMENT '其他应收款',
  `ysckts` decimal(10,2) DEFAULT NULL COMMENT '应收出口退税',
  `ysbtk` decimal(10,2) DEFAULT NULL COMMENT '应收补贴款',
  `ysbzj` decimal(10,2) DEFAULT NULL COMMENT '应收保证金',
  `nbysk` decimal(10,2) DEFAULT NULL COMMENT '内部应收款',
  `mrfsjrzc` decimal(10,2) DEFAULT NULL COMMENT '买入返售金融资产',
  `ch` decimal(10,2) DEFAULT NULL COMMENT '存货',
  `dtfy` decimal(10,2) DEFAULT NULL COMMENT '待摊费用',
  `dclldzcsy` decimal(10,2) DEFAULT NULL COMMENT '待处理流动资产损益',
  `ynndqdfldzc` decimal(10,2) DEFAULT NULL COMMENT '一年内到期的非流动资产',
  `qtldzc` decimal(10,2) DEFAULT NULL COMMENT '其他流动资产',
  `ldzchj` decimal(10,2) DEFAULT NULL COMMENT '流动资产合计',
  `ffdkjdk` decimal(10,2) DEFAULT NULL COMMENT '发放贷款及垫款',
  `kgcsjrzc` decimal(10,2) DEFAULT NULL COMMENT '可供出售金融资产',
  `cyzdqtz` decimal(10,2) DEFAULT NULL COMMENT '持有至到期投资',
  `cqysk` decimal(10,2) DEFAULT NULL COMMENT '长期应收款',
  `cqgqtz` decimal(10,2) DEFAULT NULL COMMENT '长期股权投资',
  `qtcqtz` decimal(10,2) DEFAULT NULL COMMENT '其他长期投资',
  `tzxfdc` decimal(10,2) DEFAULT NULL COMMENT '投资性房地产',
  `gdzcyz` decimal(10,2) DEFAULT NULL COMMENT '固定资产原值',
  `ljzj` decimal(10,2) DEFAULT NULL COMMENT '累计折旧',
  `gdzcjz` decimal(10,2) DEFAULT NULL COMMENT '固定资产净值',
  `gdzcjzzb` decimal(10,2) DEFAULT NULL COMMENT '固定资产减值准备',
  `gdzc` decimal(10,2) DEFAULT NULL COMMENT '固定资产',
  `zjgc` decimal(10,2) DEFAULT NULL COMMENT '在建工程',
  `gcwz` decimal(10,2) DEFAULT NULL COMMENT '工程物资',
  `gdzcql` decimal(10,2) DEFAULT NULL COMMENT '固定资产清理',
  `scxswzc` decimal(10,2) DEFAULT NULL COMMENT '生产性生物资产',
  `gyxswzc` decimal(10,2) DEFAULT NULL COMMENT '公益性生物资产',
  `yqzc` decimal(10,2) DEFAULT NULL COMMENT '油气资产',
  `wxzc` decimal(10,2) DEFAULT NULL COMMENT '无形资产',
  `kfzc` decimal(10,2) DEFAULT NULL COMMENT '开发支出',
  `sy` decimal(10,2) DEFAULT NULL COMMENT '商誉',
  `cqdtfy` decimal(10,2) DEFAULT NULL COMMENT '长期待摊费用',
  `gqfzltq` decimal(10,2) DEFAULT NULL COMMENT '股权分置流通权',
  `dysdszc` decimal(10,2) DEFAULT NULL COMMENT '递延所得税资产',
  `qtfldzc` decimal(10,2) DEFAULT NULL COMMENT '其他非流动资产',
  `fldzchj` decimal(10,2) DEFAULT NULL COMMENT '非流动资产合计',
  `zchj` decimal(10,2) DEFAULT NULL COMMENT '资产总计',
  `dqjk` decimal(10,2) DEFAULT NULL COMMENT '短期借款',
  `xzyyhjk` decimal(10,2) DEFAULT NULL COMMENT '向中央银行借款',
  `xsckjtycf` decimal(10,2) DEFAULT NULL COMMENT '吸收存款及同业存放',
  `crzj` decimal(10,2) DEFAULT NULL COMMENT '拆入资金',
  `jyxjrfz` decimal(10,2) DEFAULT NULL COMMENT '交易性金融负债',
  `ysjrfz` decimal(10,2) DEFAULT NULL COMMENT '衍生金融负债',
  `yfpj` decimal(10,2) DEFAULT NULL COMMENT '应付票据',
  `yfzk` decimal(10,2) DEFAULT NULL COMMENT '应付账款',
  `yuszk` decimal(10,2) DEFAULT NULL COMMENT '预收账款',
  `mchgjrzck` decimal(10,2) DEFAULT NULL COMMENT '卖出回购金融资产款',
  `yfsxfjyj` decimal(10,2) DEFAULT NULL COMMENT '应付手续费及佣金',
  `yfzgxc` decimal(10,2) DEFAULT NULL COMMENT '应付职工薪酬(',
  `yjsf` decimal(10,2) DEFAULT NULL COMMENT '应交税费',
  `yflx` decimal(10,2) DEFAULT NULL COMMENT '应付利息',
  `yfgl` decimal(10,2) DEFAULT NULL COMMENT '应付股利',
  `qtyjk` decimal(10,2) DEFAULT NULL COMMENT '其他应交款',
  `yfbzj` decimal(10,2) DEFAULT NULL COMMENT '应付保证金',
  `nbyfk` decimal(10,2) DEFAULT NULL COMMENT '内部应付款',
  `qtyfk` decimal(10,2) DEFAULT NULL COMMENT '其他应付款',
  `ytfy` decimal(10,2) DEFAULT NULL COMMENT '预提费用',
  `yjldfz` decimal(10,2) DEFAULT NULL COMMENT '预计流动负债',
  `yffbzk` decimal(10,2) DEFAULT NULL COMMENT '应付分保账款',
  `bxhtzbj` decimal(10,2) DEFAULT NULL COMMENT '保险合同准备金',
  `dlmmzqk` decimal(10,2) DEFAULT NULL COMMENT '代理买卖证券款',
  `dlcxzqk` decimal(10,2) DEFAULT NULL COMMENT '代理承销证券款',
  `gjpzjs` decimal(10,2) DEFAULT NULL COMMENT '国际票证结算',
  `gnpzjs` decimal(10,2) DEFAULT NULL COMMENT '国内票证结算',
  `dysy` decimal(10,2) DEFAULT NULL COMMENT '递延收益',
  `yfdqzk` decimal(10,2) DEFAULT NULL COMMENT '应付短期债券',
  `ynndqdfldfz` decimal(10,2) DEFAULT NULL COMMENT '一年内到期的非流动负债',
  `qtldfz` decimal(10,2) DEFAULT NULL COMMENT '其他流动负债',
  `ldfzhj` decimal(10,2) DEFAULT NULL COMMENT '流动负债合计',
  `cqjk` decimal(10,2) DEFAULT NULL COMMENT '长期借款',
  `yfzq` decimal(10,2) DEFAULT NULL COMMENT '应付债券',
  `cqyfk` decimal(10,2) DEFAULT NULL COMMENT '长期应付款',
  `zxyfk` decimal(10,2) DEFAULT NULL COMMENT '专项应付款',
  `yjfldfz` decimal(10,2) DEFAULT NULL COMMENT '预计非流动负债',
  `cqdysy` decimal(10,2) DEFAULT NULL COMMENT '长期递延收益',
  `dysdsfz` decimal(10,2) DEFAULT NULL COMMENT '递延所得税负债',
  `qtfldfz` decimal(10,2) DEFAULT NULL COMMENT '其他非流动负债',
  `fldfzhj` decimal(10,2) DEFAULT NULL COMMENT '非流动负债合计',
  `fzhj` decimal(10,2) DEFAULT NULL COMMENT '负债合计',
  `sszbhgb` decimal(10,2) DEFAULT NULL COMMENT '实收资本或股本',
  `zbgj` decimal(10,2) DEFAULT NULL COMMENT '资本公积',
  `kcg` decimal(10,2) DEFAULT NULL COMMENT '库存股',
  `zxcb` decimal(10,2) DEFAULT NULL COMMENT '专项储备',
  `yygj` decimal(10,2) DEFAULT NULL COMMENT '盈余公积',
  `ybfxzb` decimal(10,2) DEFAULT NULL COMMENT '一般风险准备',
  `wqddtzss` decimal(10,2) DEFAULT NULL COMMENT '未确定的投资损失',
  `wfplr` decimal(10,2) DEFAULT NULL COMMENT '未分配利润',
  `nfpxjgl` decimal(10,2) DEFAULT NULL COMMENT '拟分配现金股利',
  `wbbbzsce` decimal(10,2) DEFAULT NULL COMMENT '外币报表折算差额',
  `gsymgsgdqyhj` decimal(10,2) DEFAULT NULL COMMENT '归属于母公司股东权益合计',
  `ssgdqy` decimal(10,2) DEFAULT NULL COMMENT '少数股东权益',
  `syzqy` decimal(10,2) DEFAULT NULL COMMENT '所有者权益',
  `fzhsyzqyzh` decimal(10,2) DEFAULT NULL COMMENT '负债和所有者权益',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168196 DEFAULT CHARSET=utf8;

-- ----------------------------
-- View structure for v_cznl
-- ----------------------------
DROP VIEW IF EXISTS `v_cznl`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cznl` AS select `c`.`id` AS `id`,`c`.`code` AS `code`,`c`.`date` AS `date`,`c`.`zyywzzl` AS `zyywzzl`,`c`.`jlrzzl` AS `jlrzzl` from `t_cznl` `c` where (month(`c`.`date`) = 12) ;

-- ----------------------------
-- View structure for v_lrb
-- ----------------------------
DROP VIEW IF EXISTS `v_lrb`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lrb` AS select `l`.`id` AS `id`,`l`.`code` AS `code`,`l`.`date` AS `date`,`l`.`yyzsr` AS `yyzsr`,`l`.`yysr` AS `yysr`,`l`.`lxsr` AS `lxsr`,`l`.`yzbf` AS `yzbf`,`l`.`sxfjyjsr` AS `sxfjyjsr`,`l`.`fdcxssr` AS `fdcxssr`,`l`.`qtywsr` AS `qtywsr`,`l`.`yyzcb` AS `yyzcb`,`l`.`yycb` AS `yycb`,`l`.`lxzc` AS `lxzc`,`l`.`sxfjyjzc` AS `sxfjyjzc`,`l`.`fdcxscb` AS `fdcxscb`,`l`.`yffy` AS `yffy`,`l`.`tbj` AS `tbj`,`l`.`pfzcje` AS `pfzcje`,`l`.`tqbxhtzbjje` AS `tqbxhtzbjje`,`l`.`bdhlzc` AS `bdhlzc`,`l`.`fbfy` AS `fbfy`,`l`.`qtywcb` AS `qtywcb`,`l`.`yysjjfj` AS `yysjjfj`,`l`.`xsfy` AS `xsfy`,`l`.`glfy` AS `glfy`,`l`.`cwfy` AS `cwfy`,`l`.`zcjzss` AS `zcjzss`,`l`.`gyjzbdsy` AS `gyjzbdsy`,`l`.`tzsy` AS `tzsy`,`l`.`dyyqyhhyqydtzsy` AS `dyyqyhhyqydtzsy`,`l`.`hdsy` AS `hdsy`,`l`.`qhsy` AS `qhsy`,`l`.`tgsy` AS `tgsy`,`l`.`btsr` AS `btsr`,`l`.`qtywlr` AS `qtywlr`,`l`.`yylr` AS `yylr`,`l`.`yywsr` AS `yywsr`,`l`.`yywzc` AS `yywzc`,`l`.`fldzcczss` AS `fldzcczss`,`l`.`lrze` AS `lrze`,`l`.`sdsfy` AS `sdsfy`,`l`.`wqrtzss` AS `wqrtzss`,`l`.`jlr` AS `jlr`,`l`.`gsymgssyzdjlr` AS `gsymgssyzdjlr`,`l`.`bhbfzhbqsxjlr` AS `bhbfzhbqsxjlr`,`l`.`ssgdsy` AS `ssgdsy`,`l`.`jbmgsy` AS `jbmgsy`,`l`.`xsmgsy` AS `xsmgsy` from `t_lrb` `l` where (month(`l`.`date`) = 12) ;

-- ----------------------------
-- View structure for v_xjllb
-- ----------------------------
DROP VIEW IF EXISTS `v_xjllb`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_xjllb` AS select `x`.`id` AS `id`,`x`.`code` AS `code`,`x`.`date` AS `date`,`x`.`xssptglwsddxj` AS `xssptglwsddxj`,`x`.`khckhtycfkxjzje` AS `khckhtycfkxjzje`,`x`.`xzyyhjkjzje` AS `xzyyhjkjzje`,`x`.`xqtjrjgcrzjjzje` AS `xqtjrjgcrzjjzje`,`x`.`sdybxhtbfqddxj` AS `sdybxhtbfqddxj`,`x`.`sdzbxywxjje` AS `sdzbxywxjje`,`x`.`bhcjjtzkjzje` AS `bhcjjtzkjzje`,`x`.`czjyxjrzcjzje` AS `czjyxjrzcjzje`,`x`.`sqlxsxfjyjdxj` AS `sqlxsxfjyjdxj`,`x`.`crzjjzje` AS `crzjjzje`,`x`.`hgywzjjzje` AS `hgywzjjzje`,`x`.`sddsffh` AS `sddsffh`,`x`.`sddqtyjyhdygdxj` AS `sddqtyjyhdygdxj`,`x`.`jyhdxjlrxj` AS `jyhdxjlrxj`,`x`.`gmspjslwzfdxj` AS `gmspjslwzfdxj`,`x`.`khdkjdkjzje` AS `khdkjdkjzje`,`x`.`cfzyyhhtykxjzje` AS `cfzyyhhtykxjzje`,`x`.`zfybxhtpfkxdxj` AS `zfybxhtpfkxdxj`,`x`.`zflxsxfjyjdxj` AS `zflxsxfjyjdxj`,`x`.`zfbdhldxj` AS `zfbdhldxj`,`x`.`zfgzgyjwzgzfdxj` AS `zfgzgyjwzgzfdxj`,`x`.`zfdgxsf` AS `zfdgxsf`,`x`.`zfdqtyjyhdygdxj` AS `zfdqtyjyhdygdxj`,`x`.`jyhdxjlcxj` AS `jyhdxjlcxj`,`x`.`jyhdcsdxjllje` AS `jyhdcsdxjllje`,`x`.`shtzssddxj` AS `shtzssddxj`,`x`.`qdtzsyssddxj` AS `qdtzsyssddxj`,`x`.`czgdzcwxzchqtcqzcsshdxjje` AS `czgdzcwxzchqtcqzcsshdxjje`,`x`.`czzgsjqtyydwsddxjje` AS `czzgsjqtyydwsddxjje`,`x`.`sddqtytzhdygdxj` AS `sddqtytzhdygdxj`,`x`.`jszyhdqckssddxj` AS `jszyhdqckssddxj`,`x`.`tzhdxjlrxj` AS `tzhdxjlrxj`,`x`.`gjgdzcwxzchqtcqzcszfdxj` AS `gjgdzcwxzchqtcqzcszfdxj`,`x`.`tzszfdxj` AS `tzszfdxj`,`x`.`zydkjzje` AS `zydkjzje`,`x`.`qdzgsjqtyydwzfdxjje` AS `qdzgsjqtyydwzfdxjje`,`x`.`zfdqtytzhdygdxj` AS `zfdqtytzhdygdxj`,`x`.`zjzyhdqckszfdxj` AS `zjzyhdqckszfdxj`,`x`.`tzhdxjlcxj` AS `tzhdxjlcxj`,`x`.`tzhdcsdxjllje` AS `tzhdcsdxjllje`,`x`.`xstzsddxj` AS `xstzsddxj`,`x`.`zgsxsssgdtzsddxj` AS `zgsxsssgdtzsddxj`,`x`.`qdjksddxj` AS `qdjksddxj`,`x`.`fxzqsddxj` AS `fxzqsddxj`,`x`.`sdqtyczhdygdxj` AS `sdqtyczhdygdxj`,`x`.`czhdxjlrxj` AS `czhdxjlrxj`,`x`.`chzwzfdxj` AS `chzwzfdxj`,`x`.`fpgllrhcflxszfdxj` AS `fpgllrhcflxszfdxj`,`x`.`zgszfgssgddgllr` AS `zgszfgssgddgllr`,`x`.`zfqtyczhdygdxj` AS `zfqtyczhdygdxj`,`x`.`czhdxjlcxj` AS `czhdxjlcxj`,`x`.`czhdcsdxjllje` AS `czhdcsdxjllje`,`x`.`hlbddxjjxjdjwdyx` AS `hlbddxjjxjdjwdyx`,`x`.`xjjxjdjwjzje` AS `xjjxjdjwjzje`,`x`.`qcxjjxjdjwye` AS `qcxjjxjdjwye`,`x`.`qmxjjxjdjwye` AS `qmxjjxjdjwye`,`x`.`jlr` AS `jlr`,`x`.`ssgdsy` AS `ssgdsy`,`x`.`wqrdtzss` AS `wqrdtzss`,`x`.`zcjzzb` AS `zcjzzb`,`x`.`gdzczjyqzczhscxwzzj` AS `gdzczjyqzczhscxwzzj`,`x`.`wxzctx` AS `wxzctx`,`x`.`cqdtfytx` AS `cqdtfytx`,`x`.`dtfydjs` AS `dtfydjs`,`x`.`ytfydzj` AS `ytfydzj`,`x`.`czgdzcwxzchqtcqzcdss` AS `czgdzcwxzchqtcqzcdss`,`x`.`gdzcbfss` AS `gdzcbfss`,`x`.`gyjzbdss` AS `gyjzbdss`,`x`.`dysyzj` AS `dysyzj`,`x`.`yjfz` AS `yjfz`,`x`.`cwfy` AS `cwfy`,`x`.`tzss` AS `tzss`,`x`.`dysdszcjs` AS `dysdszcjs`,`x`.`dysdsfzzj` AS `dysdsfzzj`,`x`.`chdjs` AS `chdjs`,`x`.`jyxysxmdjs` AS `jyxysxmdjs`,`x`.`jyxyfxmdzj` AS `jyxyfxmdzj`,`x`.`ywgswjskdjs` AS `ywgswjskdjs`,`x`.`yjsswwgkdzj` AS `yjsswwgkdzj`,`x`.`qt` AS `qt`,`x`.`jyhdcsxjllje` AS `jyhdcsxjllje`,`x`.`zwzwzb` AS `zwzwzb`,`x`.`ynndqdkzhgszq` AS `ynndqdkzhgszq`,`x`.`rzzrgdzc` AS `rzzrgdzc`,`x`.`xjdqmye` AS `xjdqmye`,`x`.`xjdqcye` AS `xjdqcye`,`x`.`xjdjwdqmye` AS `xjdjwdqmye`,`x`.`xjdjwdqcye` AS `xjdjwdqcye`,`x`.`xjjxjdjwdjzje` AS `xjjxjdjwdjzje` from `t_xjllb` `x` where (month(`x`.`date`) = 12) ;

-- ----------------------------
-- View structure for v_zcfzb
-- ----------------------------
DROP VIEW IF EXISTS `v_zcfzb`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_zcfzb` AS select `z`.`id` AS `id`,`z`.`code` AS `code`,`z`.`date` AS `date`,`z`.`hbzj` AS `hbzj`,`z`.`jsbfj` AS `jsbfj`,`z`.`cczj` AS `cczj`,`z`.`jyxjrzc` AS `jyxjrzc`,`z`.`ysjrzc` AS `ysjrzc`,`z`.`yspj` AS `yspj`,`z`.`yszk` AS `yszk`,`z`.`yfkx` AS `yfkx`,`z`.`ysbf` AS `ysbf`,`z`.`ysfbzk` AS `ysfbzk`,`z`.`ysfbhtzbj` AS `ysfbhtzbj`,`z`.`yslx` AS `yslx`,`z`.`ysgl` AS `ysgl`,`z`.`qtysk` AS `qtysk`,`z`.`ysckts` AS `ysckts`,`z`.`ysbtk` AS `ysbtk`,`z`.`ysbzj` AS `ysbzj`,`z`.`nbysk` AS `nbysk`,`z`.`mrfsjrzc` AS `mrfsjrzc`,`z`.`ch` AS `ch`,`z`.`dtfy` AS `dtfy`,`z`.`dclldzcsy` AS `dclldzcsy`,`z`.`ynndqdfldzc` AS `ynndqdfldzc`,`z`.`qtldzc` AS `qtldzc`,`z`.`ldzchj` AS `ldzchj`,`z`.`ffdkjdk` AS `ffdkjdk`,`z`.`kgcsjrzc` AS `kgcsjrzc`,`z`.`cyzdqtz` AS `cyzdqtz`,`z`.`cqysk` AS `cqysk`,`z`.`cqgqtz` AS `cqgqtz`,`z`.`qtcqtz` AS `qtcqtz`,`z`.`tzxfdc` AS `tzxfdc`,`z`.`gdzcyz` AS `gdzcyz`,`z`.`ljzj` AS `ljzj`,`z`.`gdzcjz` AS `gdzcjz`,`z`.`gdzcjzzb` AS `gdzcjzzb`,`z`.`gdzc` AS `gdzc`,`z`.`zjgc` AS `zjgc`,`z`.`gcwz` AS `gcwz`,`z`.`gdzcql` AS `gdzcql`,`z`.`scxswzc` AS `scxswzc`,`z`.`gyxswzc` AS `gyxswzc`,`z`.`yqzc` AS `yqzc`,`z`.`wxzc` AS `wxzc`,`z`.`kfzc` AS `kfzc`,`z`.`sy` AS `sy`,`z`.`cqdtfy` AS `cqdtfy`,`z`.`gqfzltq` AS `gqfzltq`,`z`.`dysdszc` AS `dysdszc`,`z`.`qtfldzc` AS `qtfldzc`,`z`.`fldzchj` AS `fldzchj`,`z`.`zchj` AS `zchj`,`z`.`dqjk` AS `dqjk`,`z`.`xzyyhjk` AS `xzyyhjk`,`z`.`xsckjtycf` AS `xsckjtycf`,`z`.`crzj` AS `crzj`,`z`.`jyxjrfz` AS `jyxjrfz`,`z`.`ysjrfz` AS `ysjrfz`,`z`.`yfpj` AS `yfpj`,`z`.`yfzk` AS `yfzk`,`z`.`yuszk` AS `yuszk`,`z`.`mchgjrzck` AS `mchgjrzck`,`z`.`yfsxfjyj` AS `yfsxfjyj`,`z`.`yfzgxc` AS `yfzgxc`,`z`.`yjsf` AS `yjsf`,`z`.`yflx` AS `yflx`,`z`.`yfgl` AS `yfgl`,`z`.`qtyjk` AS `qtyjk`,`z`.`yfbzj` AS `yfbzj`,`z`.`nbyfk` AS `nbyfk`,`z`.`qtyfk` AS `qtyfk`,`z`.`ytfy` AS `ytfy`,`z`.`yjldfz` AS `yjldfz`,`z`.`yffbzk` AS `yffbzk`,`z`.`bxhtzbj` AS `bxhtzbj`,`z`.`dlmmzqk` AS `dlmmzqk`,`z`.`dlcxzqk` AS `dlcxzqk`,`z`.`gjpzjs` AS `gjpzjs`,`z`.`gnpzjs` AS `gnpzjs`,`z`.`dysy` AS `dysy`,`z`.`yfdqzk` AS `yfdqzk`,`z`.`ynndqdfldfz` AS `ynndqdfldfz`,`z`.`qtldfz` AS `qtldfz`,`z`.`ldfzhj` AS `ldfzhj`,`z`.`cqjk` AS `cqjk`,`z`.`yfzq` AS `yfzq`,`z`.`cqyfk` AS `cqyfk`,`z`.`zxyfk` AS `zxyfk`,`z`.`yjfldfz` AS `yjfldfz`,`z`.`cqdysy` AS `cqdysy`,`z`.`dysdsfz` AS `dysdsfz`,`z`.`qtfldfz` AS `qtfldfz`,`z`.`fldfzhj` AS `fldfzhj`,`z`.`fzhj` AS `fzhj`,`z`.`sszbhgb` AS `sszbhgb`,`z`.`zbgj` AS `zbgj`,`z`.`kcg` AS `kcg`,`z`.`zxcb` AS `zxcb`,`z`.`yygj` AS `yygj`,`z`.`ybfxzb` AS `ybfxzb`,`z`.`wqddtzss` AS `wqddtzss`,`z`.`wfplr` AS `wfplr`,`z`.`nfpxjgl` AS `nfpxjgl`,`z`.`wbbbzsce` AS `wbbbzsce`,`z`.`gsymgsgdqyhj` AS `gsymgsgdqyhj`,`z`.`ssgdqy` AS `ssgdqy`,`z`.`syzqy` AS `syzqy`,`z`.`fzhsyzqyzh` AS `fzhsyzqyzh` from `t_zcfzb` `z` where (month(`z`.`date`) = 12) ;
