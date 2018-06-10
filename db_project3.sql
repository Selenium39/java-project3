/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_project3

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-06-10 21:14:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `studentId` varchar(255) NOT NULL COMMENT '学生编号',
  `studentName` varchar(255) DEFAULT NULL COMMENT '学生姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '学生密码',
  `score` int(11) DEFAULT NULL COMMENT '学生成绩',
  `sclass` varchar(255) DEFAULT NULL COMMENT '班级，与关键字class重名，所以叫sclass',
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('161003530106', '万涛999', '123', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530107', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530108', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530109', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530110', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530111', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530113', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530114', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530115', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530116', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530117', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530118', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530119', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530120', '万涛', '1234', null, '德泰1613');
INSERT INTO `tb_student` VALUES ('161003530999', '张三', '123', null, '德泰1613');

-- ----------------------------
-- Table structure for tb_subject
-- ----------------------------
DROP TABLE IF EXISTS `tb_subject`;
CREATE TABLE `tb_subject` (
  `subjectId` int(11) NOT NULL AUTO_INCREMENT COMMENT '试题编号',
  `subjectTitle` varchar(255) DEFAULT NULL COMMENT '试题题目',
  `subjectOptionA` varchar(255) DEFAULT NULL COMMENT '试题选项',
  `subjectOptionB` varchar(255) DEFAULT NULL,
  `subjectOptionC` varchar(255) DEFAULT NULL,
  `subjectOptionD` varchar(255) DEFAULT NULL,
  `subjectAnswer` varchar(255) DEFAULT NULL COMMENT '正确答案',
  `subjectParse` text COMMENT '试题解析',
  PRIMARY KEY (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_subject
-- ----------------------------
INSERT INTO `tb_subject` VALUES ('2', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '好简单，嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('3', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('4', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '这是第四个啦，嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('5', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('6', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('7', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('8', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('9', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('10', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('11', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('12', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('13', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('14', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('15', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('16', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('17', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('18', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('20', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('21', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('22', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('23', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('24', '十进制8转化为二进制是()', '1000', '1010', '1100', '1001', 'A', '嘤嘤嘤嘤嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('27', '谁是世界上最帅的人', '吴彦祖1', '吴彦祖2', '吴彦祖3', '万涛', 'D', '就是这样，嘤嘤嘤');
INSERT INTO `tb_subject` VALUES ('28', '十进制8转化为二进制是()', '01000', '1010', '11111', '1233', 'A', '');
INSERT INTO `tb_subject` VALUES ('29', '十进制8转化为二进制是()', '01000', '11000', '11111', '10111', 'A', '嘤嘤嘤');

-- ----------------------------
-- Table structure for tb_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
  `teacherId` varchar(255) NOT NULL COMMENT '老师编号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`teacherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES ('1', '123');
