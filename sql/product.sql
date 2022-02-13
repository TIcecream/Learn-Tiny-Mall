-- ----------------------------
DROP TABLE IF EXISTS `pms_product_category`;
CREATE TABLE `pms_product_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上机分类的编号：0表示一级分类',
  `name` varchar(64) DEFAULT NULL,
  `level` int(1) DEFAULT NULL COMMENT '分类级别：0->1级；1->2级',
  `product_count` int(11) DEFAULT NULL,
  `product_unit` varchar(64) DEFAULT NULL,
  `nav_status` int(1) DEFAULT NULL COMMENT '是否显示在导航栏：0->不显示；1->显示',
  `show_status` int(1) DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `sort` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `keywords` varchar(255) DEFAULT NULL,
  `description` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='产品分类';

-- ----------------------------
-- Records of pms_product_category
-- ----------------------------
INSERT INTO `pms_product_category` VALUES ('1', '0', '服装', '0', '100', '件', '1', '1', '1', null, '服装', '服装分类');
INSERT INTO `pms_product_category` VALUES ('2', '0', '手机数码', '0', '100', '件', '1', '1', '1', null, '手机数码', '手机数码');
INSERT INTO `pms_product_category` VALUES ('3', '0', '家用电器', '0', '100', '件', '1', '1', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png', '家用电器', '家用电器');
INSERT INTO `pms_product_category` VALUES ('4', '0', '家具家装', '0', '100', '件', '1', '1', '1', null, '家具家装', '家具家装');
INSERT INTO `pms_product_category` VALUES ('5', '0', '汽车用品', '0', '100', '件', '1', '1', '1', null, '汽车用品', '汽车用品');
INSERT INTO `pms_product_category` VALUES ('7', '1', '外套', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_waitao.png', '外套', '外套');
INSERT INTO `pms_product_category` VALUES ('8', '1', 'T恤', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_tshirt.png', 'T恤', 'T恤');
INSERT INTO `pms_product_category` VALUES ('9', '1', '休闲裤', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_xiuxianku.png', '休闲裤', '休闲裤');
INSERT INTO `pms_product_category` VALUES ('10', '1', '牛仔裤', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_niuzaiku.png', '牛仔裤', '牛仔裤');
INSERT INTO `pms_product_category` VALUES ('11', '1', '衬衫', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_chenshan.png', '衬衫', '衬衫分类');
INSERT INTO `pms_product_category` VALUES ('13', '12', '家电子分类1', '1', '1', 'string', '0', '1', '0', 'string', 'string', 'string');
INSERT INTO `pms_product_category` VALUES ('14', '12', '家电子分类2', '1', '1', 'string', '0', '1', '0', 'string', 'string', 'string');
INSERT INTO `pms_product_category` VALUES ('19', '2', '手机通讯', '1', '0', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_shouji.png', '手机通讯', '手机通讯');
INSERT INTO `pms_product_category` VALUES ('29', '1', '男鞋', '1', '0', '', '0', '0', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_xie.png', '', '');
INSERT INTO `pms_product_category` VALUES ('30', '2', '手机配件', '1', '0', '', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_peijian.png', '手机配件', '手机配件');
INSERT INTO `pms_product_category` VALUES ('31', '2', '摄影摄像', '1', '0', '', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_sheying.png', '', '');
INSERT INTO `pms_product_category` VALUES ('32', '2', '影音娱乐', '1', '0', '', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_yule.png', '', '');
INSERT INTO `pms_product_category` VALUES ('33', '2', '数码配件', '1', '0', '', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_yule.png', '', '');
INSERT INTO `pms_product_category` VALUES ('34', '2', '智能设备', '1', '0', '', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_zhineng.png', '', '');
INSERT INTO `pms_product_category` VALUES ('35', '3', '电视', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('36', '3', '空调', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('37', '3', '洗衣机', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('38', '3', '冰箱', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('39', '3', '厨卫大电', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('40', '3', '厨房小电', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('41', '3', '生活电器', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('42', '3', '个护健康', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('43', '4', '厨房卫浴', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('44', '4', '灯饰照明', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('45', '4', '五金工具', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('46', '4', '卧室家具', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('47', '4', '客厅家具', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('48', '5', '全新整车', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('49', '5', '车载电器', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('50', '5', '维修保养', '1', '0', '', '1', '1', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('51', '5', '汽车装饰', '1', '0', '', '1', '1', '0', '', '', '');


DROP TABLE IF EXISTS `pms_product_attribute`;
CREATE TABLE `pms_product_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_attribute_category_id` bigint(20) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `select_type` int(1) DEFAULT NULL COMMENT '属性选择类型：0->唯一；1->单选；2->多选',
  `input_type` int(1) DEFAULT NULL COMMENT '属性录入方式：0->手工录入；1->从列表中选取',
  `input_list` varchar(255) DEFAULT NULL COMMENT '可选值列表，以逗号隔开',
  `sort` int(11) DEFAULT NULL COMMENT '排序字段：最高的可以单独上传图片',
  `filter_type` int(1) DEFAULT NULL COMMENT '分类筛选样式：1->普通；1->颜色',
  `search_type` int(1) DEFAULT NULL COMMENT '检索类型；0->不需要进行检索；1->关键字检索；2->范围检索',
  `related_status` int(1) DEFAULT NULL COMMENT '相同属性产品是否关联；0->不关联；1->关联',
  `hand_add_status` int(1) DEFAULT NULL COMMENT '是否支持手动新增；0->不支持；1->支持',
  `type` int(1) DEFAULT NULL COMMENT '属性的类型；0->规格；1->参数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='商品属性参数表';


-- ----------------------------
-- Records of pms_product_attribute
-- ----------------------------
INSERT INTO `pms_product_attribute` VALUES ('1', '1', '尺寸', '2', '1', 'M,X,XL,2XL,3XL,4XL', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('7', '1', '颜色', '2', '1', '黑色,红色,白色,粉色', '100', '0', '0', '0', '1', '0');
INSERT INTO `pms_product_attribute` VALUES ('13', '0', '上市年份', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('14', '0', '上市年份1', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('15', '0', '上市年份2', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('16', '0', '上市年份3', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('17', '0', '上市年份4', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('18', '0', '上市年份5', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('19', '0', '适用对象', '1', '1', '青年女性,中年女性', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('20', '0', '适用对象1', '2', '1', '青年女性,中年女性', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('21', '0', '适用对象3', '2', '1', '青年女性,中年女性', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('24', '1', '商品编号', '1', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('25', '1', '适用季节', '1', '1', '春季,夏季,秋季,冬季', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('32', '2', '适用人群', '0', '1', '老年,青年,中年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('33', '2', '风格', '0', '1', '嘻哈风格,基础大众,商务正装', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('35', '2', '颜色', '0', '0', '', '100', '0', '0', '0', '1', '0');
INSERT INTO `pms_product_attribute` VALUES ('37', '1', '适用人群', '1', '1', '儿童,青年,中年,老年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('38', '1', '上市时间', '1', '1', '2017年秋,2017年冬,2018年春,2018年夏', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('39', '1', '袖长', '1', '1', '短袖,长袖,中袖', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('40', '2', '尺码', '0', '1', '29,30,31,32,33,34', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('41', '2', '适用场景', '0', '1', '居家,运动,正装', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('42', '2', '上市时间', '0', '1', '2018年春,2018年夏', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('43', '3', '颜色', '0', '0', '', '100', '0', '0', '0', '1', '0');
INSERT INTO `pms_product_attribute` VALUES ('44', '3', '容量', '0', '1', '16G,32G,64G,128G', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('45', '3', '屏幕尺寸', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('46', '3', '网络', '0', '1', '3G,4G', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('47', '3', '系统', '0', '1', 'Android,IOS', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('48', '3', '电池容量', '0', '0', '', '0', '0', '0', '0', '0', '1');