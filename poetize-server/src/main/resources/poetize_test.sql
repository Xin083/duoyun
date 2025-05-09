-- MySQL dump 10.13  Distrib 8.4.5, for macos15 (arm64)
--
-- Host: localhost    Database: poetize_test
-- ------------------------------------------------------
-- Server version	8.4.5

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int NOT NULL COMMENT '用户ID',
  `sort_id` int NOT NULL COMMENT '分类ID',
  `label_id` int NOT NULL COMMENT '标签ID',
  `article_cover` varchar(256) DEFAULT NULL COMMENT '封面',
  `article_title` varchar(32) NOT NULL COMMENT '博文标题',
  `article_content` text NOT NULL COMMENT '博文内容',
  `video_url` varchar(1024) DEFAULT NULL COMMENT '视频链接',
  `view_count` int NOT NULL DEFAULT '0' COMMENT '浏览量',
  `like_count` int NOT NULL DEFAULT '0' COMMENT '点赞数',
  `view_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否可见[0:否，1:是]',
  `password` varchar(128) DEFAULT NULL COMMENT '密码',
  `tips` varchar(128) DEFAULT NULL COMMENT '提示',
  `recommend_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐[0:否，1:是]',
  `comment_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用评论[0:否，1:是]',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最终修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '最终修改人',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用[0:未删除，1:已删除]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,1,1,'http://127.0.0.1:8081/articleCover/root1174678006715491.png','我将玫瑰藏于身后，那人却在，灯火阑珊处，不曾回眸。','1.我将玫瑰藏于身后，风起花落，从此鲜花赠自己，纵马踏花向自由.\n\n2.我将玫瑰藏于身后，也将喜欢藏于心底，再相遇时，满是遗憾.\n\n3.我将玫瑰藏于身后，也将喜欢藏于心底，从此之后，玫瑰与你都不可提及.\n\n4.我将玫瑰藏于身后，再见你时，花是花，树是树.\n\n5.我将玫瑰藏于身后，没有玫瑰，也没有你.\n![article.png](http://127.0.0.1:8081/articlePicture/root11746780033072996.png)',NULL,3,0,1,NULL,NULL,0,1,'2025-05-09 16:41:48','2025-05-09 16:36:48',NULL,0),(2,1,1,2,'http://127.0.0.1:8081/articleCover/root11746780483394436.png',' 🍃心动却悄无声息，我只敢默默守望。🍂','🍃心动却悄无声息，我只敢默默守望。🍂\n🍂 或许我们终无法亲口说出来，但我们心中的那份感受永远存在。\n\n🍂 守望的情感，或许带着一些遗憾，但也让我们感受到生命中那些独特而珍贵的瞬间。\n\n🍂 忘不掉的是回忆，继续的是生活，来来往往身边出现了很多人，总有一个位置，一直没有变。看看温暖的阳光，偶尔还是会想一想。\n\n🍂 生命中，总有些人，安然而来，静静守候，不离不弃;也有些人，浓烈如酒，疯狂似醉，却是醒来无处觅，来去都如风，梦过无痕。\n\n🍂 缘深缘浅，如此这般：无数的相遇，无数的别离，伤感良多，或许不舍，或许期待，或许无奈，终得悟，不如守拙以清心，淡然而浅笑。\n\n🍂 笑看花开花落、云卷云舒、缘来缘去。好多东西都没了，就像是遗失在风中的烟花，让我来不及说声再见，就已经消逝不见。\n\n🍂 有时候，莫名的，不想和任何人说话，只想一个人静静的发呆。有时候，夜深人静，突然觉得不是睡不着，而是固执地不想睡。\n\n![article1.png](http://127.0.0.1:8081/articlePicture/root11746780442334818.png)',NULL,1,0,1,NULL,NULL,0,1,'2025-05-09 16:48:25','2025-05-09 16:48:25',NULL,0),(3,1,1,3,'http://127.0.0.1:8081/articleCover/root11746786778109128.jpg',' 🪁纵有疾风起，人生不言弃。🪁','🪁纵有疾风起，人生不言弃。🪁\n有人说：这个世界上有两种人，喜欢宫崎骏动画的人，和没有看过宫崎骏动画的人。\n宫崎骏的动画，是很多人的童年回忆。唯美的画风，治愈的故事，不拘一格的想象力，滋润了无数孩子和大人的心灵。而他本人，也被誉为动漫界的莎士比亚。\n\n今天，让我们一起读读宫崎骏作品，走进他那温暖又治愈的动画世界。\n\n《千与千寻》🌺\n《千与千寻》是一部关于成长、人性和寻找自我的电影。\n它不仅仅是献给孩子的童话，更是献给成年人的礼物。\n\n它讲述的是一个10岁孩子千寻的奇幻冒险，在冒险经历中逐渐变得坚强和勇敢，让我们看到了一个孩子的成长与蜕变。\n\n经典语录：🌺\n🪁 人生就是一列开往坟墓的列车，路途上会有很多站，很难有人可以自始至终陪着你走完。当陪你的人要下车时，即使不舍也该心存感激，然后挥手道别。\n\n🪁 不管前方的路有多苦，只要走的方向正确，不管多么崎岖不平，都比站在原地更接近幸福。\n\n🪁 人永远不知道，谁哪次不经意地跟你说了再见之后，就真的不会再见了。\n\n🪁 已经走到尽头的东西，重生也不过是再一次的消亡。就像所有的开始，其实都只是一个写好了的结局。\n\n🪁 用善意的心情去理解别人的话，会让世界单纯美好容易。世界如此之大，我却能幸运地遇见一些人。\n\n🪁 一条路不能回头，就是一生要走许多路，有成长之路。很多事情不能自己掌控，即使再孤单再寂寞，仍要继续走下去，不许停也不能回头。\n\n🪁 因为遇见你，我才知道我也能拥有美丽的记忆。所以，无论你怎么对待我，我都会用心去宽恕你的恨，用心去铭记你的好。\n\n🪁 我只能送你到这里了，剩下的路你要自己走，不要回头。\n\n🪁 这世上有一条路无论如何也不能走，那就是歧途，只要走错一步结果都会是粉身碎骨。\n\n🪁 这个世界真的很现实，每个人都在为着同一个目的，不惜一切代价努力着，心甘情愿的成为金钱的奴隶，死心蹋地的付出。\n\n![article2.jpg](http://127.0.0.1:8081/articlePicture/root11746786739457615.jpg)',NULL,0,0,1,NULL,NULL,0,1,'2025-05-09 18:06:07','2025-05-09 18:33:07',NULL,0),(4,1,2,4,'http://127.0.0.1:8081/articleCover/root11746779758896497.jpg','站点开源','**前言**\n由于看到部分靓仔留言想要一份源码，一时间也没整理就直接梭哈上去了，喜欢的可以去码云看看哦（运行不了算我输🤪）。\n\n地址\n源码地址：https://github.com/Xin083/\n\n***部署教程就不搞，和原来的一样，不懂的加群看文档***\n***群聊***\n有什么问题的，可以加群交流。\n\n【群聊二维码】\n',NULL,7,0,1,NULL,NULL,1,1,'2025-05-09 18:33:02','2025-05-09 21:31:30','root',0),(5,1,2,4,'http://127.0.0.1:8081/articleCover/root11746781591802376.png','情不是负累，是我们这次能活下来的原因','***苍兰诀***\n我们都要为爱一个人承担责任付出代价，所以情不是负累，是我们这次能够活下来的原因，世间万物瞬息万变唯有爱不是，纵然身死毁灭也定不负她，但愿你永远平安喜乐，有朋友，有兄弟，有忠诚，有人爱，再也不会孤单\n\n\n***[苍兰诀一周年](http://127.0.0.1:8081/video/video1.mp4)***','http://127.0.0.1:8081/video/video.mp4',25,0,1,NULL,NULL,0,1,'2025-05-09 18:36:35','2025-05-09 20:49:08','root',0),(8,1,2,4,'http://127.0.0.1:8081/articleCover/root11746787903249264.png',' 站点开通上线啦','1、此站点是一个 Spring Boot + Vue2 + Vue3 的产物。\n2、网站配置方面：\n服务器：天翼云（中国电信-天翼云,云网融合,安全可信,专享定制 https://www.ctyun.cn/） 2H 4G 40G，这个配置看起来还行，就是使用80和443端口需要备案完成，才可以使用，不推荐！！！\n带宽：5M 不限流量。\nCDN: 七牛云。\n3、因此站点运用的动画效果比较多，因此访问起来多少有点慢。\n4、运行效果图\n![article3.png](http://127.0.0.1:8081/articlePicture/root11746787884774531.png)\n5、关于功能方面\n自己去体验~',NULL,0,0,1,NULL,NULL,0,1,'2025-05-09 18:52:00','2025-05-09 18:52:00',NULL,0),(9,1,2,4,'http://127.0.0.1:8081/articleCover/root11746788802621677.png',' 记录留言板被刷入大量网址','留言板被刷入大量网址\n💢今天上博客看了一下，发现被人刷了好多留言，不知道哪位DM干的。\n如图：\n![article6.png](http://127.0.0.1:8081/articlePicture/root11746788756142833.png)\n\n💢然后到数据库看了一下发现有307条记录💢\n![article8.png](http://127.0.0.1:8081/articlePicture/root11746788766505200.png)\n\n💢删除处理了\n![article5.png](http://127.0.0.1:8081/articlePicture/root11746788779536936.png)\n\n💢最后，希望各位靓仔冷静点哦，不然我会嘤嘤嘤的~\n![article4.gif](http://127.0.0.1:8081/articlePicture/root11746788790889620.gif)',NULL,0,0,1,NULL,NULL,0,1,'2025-05-09 19:06:49','2025-05-09 19:06:49',NULL,0),(10,1,3,6,'http://127.0.0.1:8081/articleCover/root11746789259513911.png','使用zh-CN Bing 壁纸接口实现网页背景图片定时更新','使用zh-CN Bing 壁纸接口实现网页背景图片',NULL,1,0,1,NULL,NULL,0,1,'2025-05-09 19:14:23','2025-05-09 19:14:23',NULL,0),(11,1,3,8,'http://127.0.0.1:8081/articleCover/root1174678977183947.png','☀️博客顶部白天黑夜开关切换',' ☀️博客顶部白天黑夜开关切换🌛之前在看其他人博客的时候，看到有做白天黑夜切换的，感觉挺不错的。所以我也想做一个，于是就去问百度借了一个，虽然做得有些粗',NULL,0,0,1,NULL,NULL,0,1,'2025-05-09 19:23:03','2025-05-09 19:23:03',NULL,0),(12,1,3,10,'http://127.0.0.1:8081/articleCover/root11746789944700674.png','在页面计算显示每秒帧数值的小组件','在页面计算显示每秒帧数值之FPS，之前在逛其他人网站的时候偶然看到的效果，于是乎便自己借了过来，应该还算可以吧。什么都不用说了，我懂的~',NULL,0,0,1,NULL,NULL,0,1,'2025-05-09 19:25:48','2025-05-09 19:25:48',NULL,0),(13,1,3,11,'http://127.0.0.1:8081/articleCover/root11746790045092304.png','vue2使用tailwindcss实现登录框','前言：首先说明一下，由于这个页面是根据此博客进行修改的，又因为博客用的element ui，所以使用这个css库会有惊人的效果哦。🤪喜欢的请往下看。（反正页面我也是借的）\n\n一、前端样式说明\n🌺. 如果想深入了解的可以先看看Tailwind CSS文档\n\n🌺. 这里有个参考教程，教你怎么配置的https://www.qb5200.com/article/539101.html\n\n🌺. 按照上面教程安装好依赖库之后接下面就是vue页面实现了。\n\n🍃登录界面效果图（页面中的方块是可以动的🥬）：\n![article12.png](http://127.0.0.1:8081/articlePicture/root11746790570100887.png)\n\n\n\n🍃忘记密码界面图（不要问我为什么，我没做）：\n![article16.png](http://127.0.0.1:8081/articlePicture/root11746790581582942.png)\n\n二、前端代码\n🌺. 建一个login.vue页面。\n```XML\n<template>\n  <div class=\"relative min-h-screen flex\">\n    <div class=\"\n        flex flex-col\n        sm:flex-row\n        items-center\n        md:items-start\n        sm:justify-center\n        md:justify-start\n        flex-auto\n        min-w-0\n        bg-white\n        \">\n      <div id=\"login_bg\" class=\"\n            sm:w-1/2\n            xl:w-3/5\n            h-full\n            hidden\n            md:flex\n            flex-auto\n            items-center\n            justify-center\n            p-10\n            overflow-hidden\n            bg-purple-900\n            text-white\n            bg-no-repeat bg-cover\n            relative\">\n        <div class=\"absolute bg-gradient-to-b\n                from-indigo-600\n                to-blue-500\n                opacity-75\n                inset-0\n                z-0\">\n        </div>\n        <div class=\"w-full max-w-md z-10\">\n          <div class=\"sm:text-4xl xl:text-5xl font-bold leading-tight mb-6\">\n            欢迎光临\n          </div>\n          <div class=\"sm:text-sm xl:text-md text-gray-200 font-normal\">\n            欢迎来到又菜又爱玩俱乐部，在这里和志同道合的朋友一起分享有趣的故事，一起组织有趣的活动...\n          </div>\n        </div>\n        <ul class=\"circles\">\n          <li>\n          </li>\n          <li>\n          </li>\n          <li>\n          </li>\n          <li>\n          </li>\n          <li>\n          </li>\n          <li>\n          </li>\n          <li>\n          </li>\n          <li>\n          </li>\n          <li>\n          </li>\n          <li>\n          </li>\n        </ul>\n      </div>\n      <!-- 登录 -->\n      <div id=\"logins\" class=\"\n            md:flex md:items-center md:justify-center\n            w-full\n            sm:w-auto\n            md:h-full\n            w-2/5\n            xl:w-2/5\n            p-8\n            md:p-10\n            lg:p-14\n            sm:rounded-lg\n            md:rounded-none\n            bg-white\">\n        <div class=\"max-w-md w-full mx-auto space-y-8\">\n          <div class=\"text-center\">\n            <h2 class=\"mt-6 text-3xl font-bold text-gray-900\">\n              欢迎登录\n            </h2>\n            <p style=\"display: none;\" class=\"mt-2 text-sm text-gray-500\">\n              第三方登录\n            </p>\n          </div>\n          <div class=\"flex items-center justify-center space-x-2\">\n                        <span class=\"h-px w-16 bg-gray-200\">\n                        </span>\n            <span class=\"text-gray-300 font-normal\">\n                            使用用户名或邮箱登录\n                        </span>\n            <span class=\"h-px w-16 bg-gray-200\">\n                        </span>\n          </div>\n          <form class=\"mt-8 space-y-6\" action=\"#\" method=\"POST\">\n            <input type=\"hidden\" name=\"remember\" value=\"true\" />\n            <div class=\"relative\">\n              <label class=\"ml-3 text-sm font-bold text-gray-700 tracking-wide\">\n                用户名/邮箱\n              </label>\n              <input id=\"user\" class=\"w-full text-base px-4 py-2 border-b border-gray-300 focus:outline-none focus:border-indigo-500\"\n                     v-model=\"account\"\n                     type=\"text\" placeholder=\"请输入电子邮箱\" />\n            </div>\n            <div class=\"mt-8 content-center\">\n              <label class=\"ml-3 text-sm font-bold text-gray-700 tracking-wide\">\n                密码\n              </label>\n              <input id=\"pwd\" class=\"\n                            w-full\n                            content-center\n                            text-base\n                            px-4\n                            py-2\n                            border-b\n                            rounded-2xl\n                            border-gray-300\n                            focus:outline-none focus:border-indigo-500\"\n                     v-model=\"password\"\n                     type=\"password\" placeholder=\"请输入密码\" />\n            </div>\n            <div class=\"flex items-center justify-between\">\n              <div class=\"flex items-center\">\n                <input id=\"user_remember_me\" name=\"user_remember_me\" type=\"checkbox\" class=\"\n                                h-4\n                                w-4\n                                bg-blue-500\n                                focus:ring-blue-400\n                                border-gray-300\n                                rounded\n                                \" />\n                <label for=\"user_remember_me\" class=\"ml-2 block text-sm text-gray-900\">\n                  记住我\n                </label>\n              </div>\n              <div class=\"text-sm\">\n                <a href=\"#\" class=\"text-indigo-400 hover:text-blue-500\">\n                  忘记密码？\n                </a>\n              </div>\n            </div>\n            <div>\n              <input type=\"button\" class=\"\n                            w-full\n                            flex\n                            justify-center\n                            bg-gradient-to-r\n                            from-indigo-500\n                            to-blue-600\n                            hover:bg-gradient-to-l\n                            hover:from-blue-500\n                            hover:to-indigo-600\n                            text-gray-100\n                            p-4\n                            rounded-full\n                            tracking-wide\n                            font-semibold\n                            shadow-lg\n                            cursor-pointer\n                            transition\n                            ease-in\n                            duration-500\n                            \" value=\"登 录\" @click=\"login()\" />\n \n            </div>\n            <p class=\"\n                        items-center\n                        justify-center\n                        mt-10\n                        text-center text-md text-gray-500\">\n                            <span>\n                                还没有账号？\n                            </span>\n              <a id=\"ljzc\" href=\"#\" target=\"_self\" class=\"\n                            text-indigo-400\n                            hover:text-blue-500\n                            no-underline\n                            hover:underline\n                            cursor-pointer\n                            transition\n                            ease-in\n                            duration-300\n                            \">立即注册</a>\n            </p>\n          </form>\n        </div>\n      </div>\n      <!-- 注册 -->\n      <div id=\"zhuce\" class=\"\n            md:flex md:items-center md:justify-center\n            w-full\n            sm:w-auto\n            md:h-full\n            w-2/5\n            xl:w-2/5\n            p-8\n            md:p-10\n            lg:p-14\n            sm:rounded-lg\n            md:rounded-none\n            bg-white\">\n        <div class=\"max-w-md w-full mx-auto space-y-8\">\n          <div class=\"text-center\">\n            <h2 class=\"mt-6 text-3xl font-bold text-gray-900\">\n              欢迎注册\n            </h2>\n            <p style=\"display: none;\" class=\"mt-2 text-sm text-gray-500\">\n              第三方登录\n            </p>\n          </div>\n          <div class=\"flex items-center justify-center space-x-2\">\n                        <span class=\"h-px w-16 bg-gray-200\">\n                        </span>\n            <span class=\"text-gray-300 font-normal\">\n                            使用电子邮箱注册\n                        </span>\n            <span class=\"h-px w-16 bg-gray-200\">\n                        </span>\n          </div>\n          <form class=\"mt-8 space-y-6\" action=\"#\" method=\"POST\">\n            <input type=\"hidden\" name=\"remember\" value=\"true\" />\n            <!-- 用户名 -->\n            <div class=\"relative\">\n              <label class=\"ml-3 text-sm font-bold text-gray-700 tracking-wide\">\n                用户名\n              </label>\n              <input id=\"ruser\" class=\"\n                            w-full\n                            text-base\n                            px-4\n                            py-2\n                            border-b border-gray-300\n                            focus:outline-none\n                            rounded-2xl\n                            focus:border-indigo-500\n                            \" type=\"text\"\n                     v-model=\"username\" placeholder=\"请输入用户名🧙‍♂️\" />\n            </div>\n            <!-- 密码 -->\n            <div class=\"mt-8 content-center\">\n              <label class=\"ml-3 text-sm font-bold text-gray-700 tracking-wide\">\n                密码\n              </label>\n              <input id=\"rpwd\" class=\"\n                            w-full\n                            content-center\n                            text-base\n                            px-4\n                            py-2\n                            border-b\n                            rounded-2xl\n                            border-gray-300\n                            focus:outline-none focus:border-indigo-500\n                            \" type=\"password\"\n                     v-model=\"password\" placeholder=\"请输入密码🔑\" />\n            </div>\n            <!-- 邮箱 -->\n            <div class=\"relative\">\n              <label class=\"ml-3 text-sm font-bold text-gray-700 tracking-wide\">\n                电子邮箱\n              </label>\n              <input id=\"remail\" class=\"\n                            w-full\n                            text-base\n                            px-4\n                            py-2\n                            border-b border-gray-300\n                            focus:outline-none\n                            rounded-2xl\n                            focus:border-indigo-500\n                            \" \n                     type=\"email\"\n                     v-model=\"email\" placeholder=\"请输入电子邮箱📮\" @blur=\"validateEmail\" />\n            </div>\n            <!-- 验证码 -->\n            <div class=\"relative\">\n              <label class=\"ml-3 text-sm font-bold text-gray-700 tracking-wide\">\n                验证码\n              </label>\n              <div class=\"flex items-center\">\n                <!-- 使用 Flexbox 布局 -->\n                <input id=\"rcode\" class=\"yzmw-full text-base px-4 py-2 border-b border-gray-300 focus:outline-none rounded-2xl focus:border-indigo-500\"\n                       type=\"text\" v-model=\"code\" placeholder=\"请输入邮箱验证码🐎\" @input=\"validateCode\"/>\n                <!--                <input type=\"button\" id=\"btn-yzm\" class=\"btn-yzm px-4 py-2 bg-indigo-500 text-white rounded-md\"-->\n                <!--                       @click=\"yzm()\" value=\"获取验证码\" />-->\n                <input  type=\"button\" id=\"btn-yzm\" class=\"btn-yzm px-4 py-2 bg-indigo-500 text-white rounded-md\"\n                        @click=\"getCode(false)\" :value=\"countdown > 0 ? countdown + \'s\' : \'获取验证码\'\" />\n \n \n              </div>\n            </div>\n            <div class=\"flex items-center justify-between\">\n              <div class=\"flex items-center\">\n                <input id=\"pwd_remember_me\" name=\"pwd_remember_me\" type=\"checkbox\" class=\"\n                                h-4\n                                w-4\n                                bg-blue-500\n                                focus:ring-blue-400\n                                border-gray-300\n                                rounded\" />\n                <label for=\"pwd_remember_me\" class=\"ml-2 block text-sm text-gray-900\">\n                  记住我\n                </label>\n              </div>\n              <div class=\"text-sm\">\n                <a id=\"ljdl\" href=\"#\" class=\"text-indigo-400 hover:text-blue-500\">\n                  已经🈶️账号？立即登录>>\n                </a>\n              </div>\n            </div>\n            <div>\n              <input type=\"button\" class=\"\n                            w-full\n                            flex\n                            justify-center\n                            bg-gradient-to-r\n                            from-indigo-500\n                            to-blue-600\n                            hover:bg-gradient-to-l\n                            hover:from-blue-500\n                            hover:to-indigo-600\n                            text-gray-100\n                            p-4\n                            rounded-full\n                            tracking-wide\n                            font-semibold\n                            shadow-lg\n                            cursor-pointer\n                            transition\n                            ease-in\n                            duration-500\n                            \" value=\"注册\" @click=\"regist()\"/>\n \n            </div>\n          </form>\n        </div>\n      </div>\n    </div>\n  </div>\n</template>\n\n\n```\n\n\n\n🌺. js部分,瞎写的，毕竟我的练度你也知道~┭┮﹏┭┮\n```JAVASCRIPT\n<script>\n//import \'./assets/js/jquery-1.12.1.min.js\'\nimport \'../assets/css/style.css\'\nimport \'../assets/css/tailwind.css\'\nexport default {\n  data() {\n    return {\n      currentUser: this.$store.state.currentUser,\n      username: \"\",\n      account: \"\",\n      password: \"\",\n      phoneNumber: \"\",\n      email: \"\",\n      code: \"\", // 验证码\n      countdown: 0, // 倒计时秒数\n      dialogTitle: \"\",\n      codeString: \"验证码\",\n      passwordFlag: null,\n      intervalCode: null\n    }\n  },\n  computed: {},\n  created() {\n \n  },\n  mounted() {\n    //this.validateCode();\n    // 获取登录和注册的div元素\n    var loginDiv = document.getElementById(\"logins\");\n    var registerDiv = document.getElementById(\"zhuce\");\n \n    // 获取登录和注册链接的a标签元素\n    var loginLink = document.getElementById(\"ljdl\");\n    var registerLink = document.getElementById(\"ljzc\");\n \n    // 给登录链接添加点击事件处理函数\n    loginLink.addEventListener(\"click\", () => {\n      // 隐藏注册div\n      registerDiv.style.display = \"none\";\n      // 显示登录div\n      loginDiv.style.display = \"block\";\n    });\n \n    // 给注册链接添加点击事件处理函数\n    registerLink.addEventListener(\"click\", () => {\n      // 隐藏登录div\n      loginDiv.style.display = \"none\";\n      // 显示注册div\n      registerDiv.style.display = \"block\";\n    });\n  },\n  methods: {\n    yzm() {\n      alert(\"验证码发送成功！\");\n    },\n \n    login() {\n      if (this.$common.isEmpty(this.account) || this.$common.isEmpty(this.password)) {\n        this.$message({\n          message: \"请输入账号或密码！\",\n          type: \"error\"\n        });\n        return;\n      }\n \n      let user = {\n        account: this.account.trim(),\n        password: this.$common.encrypt(this.password.trim())\n      };\n \n      this.$http.post(this.$constant.baseURL + \"/user/login\", user, false, false)\n        .then((res) => {\n          if (!this.$common.isEmpty(res.data)) {\n            this.$store.commit(\"loadCurrentUser\", res.data);\n            localStorage.setItem(\"userToken\", res.data.accessToken);\n            this.account = \"\";\n            this.password = \"\";\n            this.$router.push({path: \'/\'});\n            //登录成功\n            this.$message({\n              showClose: true,\n              message: \'恭喜你，登录成功！\',\n              type: \'success\'\n            });\n          }\n        })\n        .catch((error) => {\n          this.$message({\n            message: error.message,\n            type: \"error\"\n          });\n        });\n    },\n    //获取验证码\n    validateCode() {\n      //自动验证，直接禁止中文和符号\n      this.code = this.code.replace(/[^\\d]/g, \'\').substring(0, 6);\n    },\n    //验证邮箱格式\n    validateEmail() {\n      const emailRegex = /^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$/;\n      if (!emailRegex.test(this.email)) {\n        this.$message.error(\'邮箱格式不正确，请重新输入！\');\n        // 邮箱格式不正确，清空输入框\n        this.email = \'\';\n      }\n    },\n    getCode(immediately) {\n      if (this.countdown === 0) {\n        if (!this.email) {\n          this.$message({\n            message: \"请输入电子邮箱\",\n            type: \"warning\"\n          });\n          return;\n        }\n \n        let url = \"/user/getCodeForForgetPassword?flag=2&place=\" + this.email;\n        console.log(\"邮箱为：\" + this.email);\n \n        this.$http.get(this.$constant.baseURL + url)\n          .then((res) => {\n            this.$message({\n              message: \"验证码已发送，请注意查收！\",\n              type: \"success\"\n            });\n          })\n          .catch((error) => {\n            this.$message({\n              message: error.message,\n              type: \"error\"\n            });\n          });\n \n        this.countdown = 30; // 设置倒计时初始值为30\n        const interval = setInterval(() => {\n          if (this.countdown === 0) {\n            clearInterval(interval);\n          } else {\n            this.countdown -= 1;\n          }\n        }, 1000);\n      }\n    },\n \n    //注册\n    regist() {\n      if (this.$common.isEmpty(this.username) || this.$common.isEmpty(this.password)) {\n        this.$message({\n          message: \"请输入用户名或密码！\",\n          type: \"error\"\n        });\n        return;\n      }\n \n      if ((this.$common.isEmpty(this.email) || this.$common.isEmpty(this.code))) {\n        this.$message({\n          message: \"请输入邮箱和验证码！\",\n          type: \"error\"\n        });\n        return;\n      }\n \n      if (this.username.includes(\" \") || this.password.includes(\" \")) {\n        this.$message({\n          message: \"用户名或密码不能包含空格！\",\n          type: \"error\"\n        });\n        return;\n      }\n \n      let user = {\n        username: this.username.trim(),\n        code: this.code.trim(),\n        password: this.$common.encrypt(this.password.trim())\n      };\n      let yzcode=this.code.replace(/[^\\d]/g, \'\').substring(0, 6);\n      if (this.code = yzcode || this.code!=\"\") {\n        user.email = this.email;\n      }\n \n      // 调用后端注册接口\n      this.$http.post(this.$constant.baseURL + \"/user/regist\", user)\n        .then((res) => {\n          if (!this.$common.isEmpty(res.data)) {\n            this.$store.commit(\"loadCurrentUser\", res.data);\n            localStorage.setItem(\"userToken\", res.data.accessToken);\n            this.username = \"\";\n            this.password = \"\";\n            this.$router.push({path: \'/\'});\n            let userToken = this.$common.encrypt(localStorage.getItem(\"userToken\"));\n            //window.open(this.$constant.imBaseURL + \"?userToken=\" + userToken);\n \n            // 注册成功逻辑\n            this.$message({\n              showClose: true,\n              message: \'注册成功！\',\n              type: \'success\'\n            });\n          }\n        })\n        .catch((error) => {\n          this.$message({\n            message: error.message,\n            type: \"error\"\n          });\n        });\n    }\n  }\n};\n</script>\n\n\n```\n\n\n\n🌺. **css样式，也是乱写的(哈哈~手动滑稽自适应)。\n```CSS\n<style>\n#login_bg {\n  background-image:url(../assets/images/img.jpg);\n}\n.bg-white{\n  /* background-image:url(../assets/images/4k0012.jpg);*/\n}\n#logins {\n  display:block;\n}\n#zhuce {\n  display:none;\n}\n.yzmw-full {\n  width:75%;\n}\n.btn-yzm {\n  float:right;\n}\n/*输入框字体颜色*/\n#user,#pwd{\n  border-radius: 1rem;\n  color: black;\n}\n#ruser,#rpwd,#remail,#rcode{\n  border-radius: 1rem;\n  color: black;\n}\n@media (min-width:769px) and (max-width:988px) {\n  .yzmw-full {\n    width:65%;\n    /* 在平板屏幕宽度范围内的宽度 */\n  }\n  .bg-white{\n    /*background-image:url(../assets/images/4k0012.jpg);*/\n    background: #a9a9a9;\n    background-size: cover;\n  }\n}\n@media (max-width:768px) {\n  .yzmw-full {\n    width:65%;\n    /* 在屏幕宽度小于等于768px时的宽度 */\n  }\n  .bg-white{\n    /* background-image:url(../assets/images/4k0012.jpg);*/\n    background: #a9a9a9;\n    background-size: cover;\n  }\n}\n</style>\n\n\n```\n\n\n🥬最后我想告诉你的是，虽然页面挺不错的，但是会和首页的element样式冲突，我也不知道怎么回事，懒得找了，如果有靓仔想用这个页面的，完善好了请直接V我。（还好我用的不是这个页面）\n![article19.gif](http://127.0.0.1:8081/articlePicture/root11746790931580121.gif)\n',NULL,1,0,1,NULL,NULL,0,1,'2025-05-09 19:27:45','2025-05-09 19:42:20','root',0),(14,1,3,11,'http://127.0.0.1:8081/articleCover/root11746790151793877.png','ElementUI+炫酷背景动画登录框','ElementUI+炫酷背景动画登录框\n此登录界面是瑶妹花费了七七四十七天修改而成，理论上适用于任何页面，基于ElementUI组件完成，还加了点动画。\n\n🌺 登录效果图：\n![article22.png](http://127.0.0.1:8081/articlePicture/root1174679122214276.png)\n\n🌺 注册效果图：\n![article21.png](http://127.0.0.1:8081/articlePicture/root11746791277106820.png)\n\n🌺 忘记密码效果图：\n![article23.png](http://127.0.0.1:8081/articlePicture/root11746791310484580.png)\n\n🌺 手机版效果图：\n![article23.jpg](http://127.0.0.1:8081/articlePicture/root11746791347235888.jpg)\n\n🌺 最后：由于天气太冷，下雨了，电脑没电，手机也还有99%的电，页面代码下次在发。\n![article24.jpg](http://127.0.0.1:8081/articlePicture/root11746791372734118.jpg)',NULL,1,0,1,NULL,NULL,0,1,'2025-05-09 19:29:13','2025-05-09 19:49:42','root',0),(15,1,3,6,'http://127.0.0.1:8081/articleCover/root11746790235109315.png','Vue3 使用emoji表情包 emoji-mart-vue','**源项目地址：**[Vue3 使用emoji表情包 emoji-mart-vue-fast](https://github.com/serebrov/emoj)\n以下效果是我改良的，当然也可以自行下载git上面的自行修改~🍃\n\n示例图：\n![article24.png](http://127.0.0.1:8081/articlePicture/root1174679159252133.png)\n\n选中表情包显示到文本框：\n![article25.png](http://127.0.0.1:8081/articlePicture/root11746791619565601.png)\n\n实践\n其实使用非常简单 代码直接复制粘贴即可\n\n1.安装引入库,两种方法安装\nnpm\n\n```CMD\n npm install emoji-mart-vue-fast\n```\n\nyarn（推荐）\n```CMD\n yarn add emoji-mart-vue-fast\n```\n\n代码\n新建一个vue文件如：vueEmoji.vue\n```XML\n   <script lang=\"ts\">\nimport {defineComponent} from \'vue\'\nimport { ref } from \'vue\'\nimport { Picker, EmojiIndex } from \'emoji-mart-vue-fast/src\'\nimport data from \'emoji-mart-vue-fast/data/all.json\'\nimport \'emoji-mart-vue-fast/css/emoji-mart.css\'\n//import \'../../public/assets/messages/flowbite\'\n//import \'../../public/assets/messages/flowbite.min.css\'\nexport default defineComponent({\n  name: \"Vue3EmojiPicker\",\n  components: {\n    Picker,\n  },\n  setup(props, context) {\n    const emojiPickerSelected = ref<boolean>(false)\n    const emojiIndex = new EmojiIndex(data)\n    const emojisOutput = ref<string[]>([]) // 定义 emojisOutput 为响应式字符串数组\n    const textareaValue = ref(\'\') // 创建一个新的响应式引用来存储 textarea 的值\n \n    const toggle = () => {\n      emojiPickerSelected.value = !emojiPickerSelected.value\n    }\n \n    const handleSelect = (emoji: { native: string }) => {\n      emojisOutput.value.push(emoji.native) // 将选中的表情添加到 emojisOutput 数组中\n      // 更新 textarea 的值\n      textareaValue.value += emoji.native\n      // 如果需要，仍然可以发出事件\n      context.emit(\'updateEmoji\', emoji.native)\n    }\n \n    // 监听点击事件，如果点击的不是 Picker 组件内部，则关闭 Picker\n    const handleOutsideClick = (event) => {\n      // 如果点击的不是 Picker 组件内部，则关闭 Picker\n      if (!event.target.closest(\'.emoji-mart\')) {\n        emojiPickerSelected.value = false\n      }\n    }\n    return {\n      emojiPickerSelected,\n      emojiIndex,\n      toggle,\n      handleSelect,\n      emojisOutput, // 返回 emojisOutput，以便在模板中使用\n      textareaValue, // 返回 textareaValue，以便在模板中使用\n      handleOutsideClick,\n    }\n  },\n})\n \n</script>\n \n<template>\n  <div class=\"max-w-2xl mx-auto\">\n    <form>\n      <div class=\"mb-4 w-full bg-gray-50 rounded-lg border border-gray-200 dark:bg-gray-700 dark:border-gray-600\">\n        <div class=\"flex justify-between items-center py-2 px-3 border-b dark:border-gray-600\">\n          <div class=\"flex flex-wrap items-center divide-gray-200 sm:divide-x dark:divide-gray-600\">\n            <div class=\"flex items-center space-x-1 sm:pr-4\">\n              <button @click=\"toggle\" type=\"button\" class=\"p-2 text-gray-500 rounded cursor-pointer hover:text-gray-900 hover:bg-gray-100 dark:text-gray-400 dark:hover:text-white dark:hover:bg-gray-600\">\n                <svg class=\"w-5 h-5\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\"><path fill-rule=\"evenodd\" d=\"M10 18a8 8 0 100-16 8 8 0 000 16zM7 9a1 1 0 100-2 1 1 0 000 2zm7-1a1 1 0 11-2 0 1 1 0 012 0zm-.464 5.535a1 1 0 10-1.415-1.414 3 3 0 01-4.242 0 1 1 0 00-1.415 1.414 5 5 0 007.072 0z\" clip-rule=\"evenodd\"></path></svg>\n              </button>\n            </div>\n            <div class=\"flex flex-wrap items-center space-x-1 sm:pl-4\">\n            </div>\n          </div>\n          <button type=\"button\" data-tooltip-target=\"tooltip-fullscreen\" class=\"p-2 text-gray-500 rounded cursor-pointer sm:ml-auto hover:text-gray-900 hover:bg-gray-100 dark:text-gray-400 dark:hover:text-white dark:hover:bg-gray-600\">\n            <svg class=\"w-5 h-5\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\"><path fill-rule=\"evenodd\" d=\"M3 4a1 1 0 011-1h4a1 1 0 010 2H6.414l2.293 2.293a1 1 0 11-1.414 1.414L5 6.414V8a1 1 0 01-2 0V4zm9 1a1 1 0 010-2h4a1 1 0 011 1v4a1 1 0 01-2 0V6.414l-2.293 2.293a1 1 0 11-1.414-1.414L13.586 5H12zm-9 7a1 1 0 012 0v1.586l2.293-2.293a1 1 0 111.414 1.414L6.414 15H8a1 1 0 010 2H4a1 1 0 01-1-1v-4zm13-1a1 1 0 011 1v4a1 1 0 01-1 1h-4a1 1 0 010-2h1.586l-2.293-2.293a1 1 0 111.414-1.414L15 13.586V12a1 1 0 011-1z\" clip-rule=\"evenodd\"></path></svg>\n          </button>\n          <div id=\"tooltip-fullscreen\" role=\"tooltip\" class=\"inline-block absolute invisible z-10 py-2 px-3 text-sm font-medium text-white bg-gray-900 rounded-lg shadow-sm opacity-0 transition-opacity duration-300 tooltip dark:bg-gray-700\">\n            Show full screen\n            <div class=\"tooltip-arrow\" data-popper-arrow></div>\n          </div>\n        </div>\n        <!--        表情包展示框-->\n        <div>\n          <Picker style=\"position: absolute;z-index: 99999 !important;\"\n                  v-if=\"emojiPickerSelected\"\n                  :data=\"emojiIndex\"\n                  title=\"Pick your emoji…\"\n                  emoji=\"point_up\"\n                  @select=\"handleSelect\"\n          />\n        </div>\n        <!--        表情包展示框-->\n        <div class=\"py-2 px-4 bg-white rounded-b-lg dark:bg-gray-800\">\n          <label for=\"editor\" class=\"sr-only\">Publish post</label>\n          <textarea id=\"editor\" rows=\"8\" v-model=\"textareaValue\" class=\"block px-0 w-full text-sm text-gray-800 bg-white border-0 dark:bg-gray-800 focus:ring-0 dark:text-white dark:placeholder-gray-400\" placeholder=\"Write an article...\" required></textarea>\n        </div>\n      </div>\n \n    </form>\n  </div>\n  <button style=\"color: #00bc91\" @click=\"toggle\">Toggle Picker</button>\n  <Picker style=\"display:none;\"\n          v-if=\"emojiPickerSelected\"\n          :data=\"emojiIndex\"\n          title=\"Pick your emoji…\"\n          emoji=\"point_up\"\n          @select=\"handleSelect\"\n  />\n \n  <div class=\"row\">\n    <div style=\"color: red\">\n      输出的表情包为：{{ emojisOutput.join(\'\') }}\n    </div>\n  </div>\n</template>\n<style scoped>\n</style>\n\n\n```\n\n\n',NULL,2,0,1,NULL,NULL,0,1,'2025-05-09 19:30:37','2025-05-09 19:56:32','root',0),(16,1,4,12,'http://127.0.0.1:8081/articleCover/root11746792350045504.png',' 博客美化之图片预览插件（基于Element）','![article26.png](http://127.0.0.1:8081/articlePicture/root11746791974967125.png)本教程基于最美博客![article26.png](http://127.0.0.1:8081/articlePicture/root11746791990324337.png)：\n最美博客VUE2\n\n在部署博客时，突然发现文章页面图片不能预览，感觉好僵硬，不能放大，不能切换，于是便在网上找到以下关于图片预览的插件，具体的优劣势的看自己的使用吧，我目前只是在电脑查看效果，分别是viewerjs插件、基于photoswipe的vue-photo-preview插件以及vue-picture-preview插件，本云朵☁️目前使用的是viewerjs插件。\n\n\n![article27.png](http://127.0.0.1:8081/articlePicture/root11746792066754468.png)\n效果截图如上。（支持放大缩小，切换等）\n\n1、安装插件依赖\n```CMD\nnpm install v-viewer --save\n\n```\n\n安装信息如下图：\n![article28.png](http://127.0.0.1:8081/articlePicture/root11746792151981623.png)\n\n\n2、在main.js文件内引用并注册调用\n```JAVASCRIPT\n//main.js\nimport Viewer from \'v-viewer\'\nimport \'viewerjs/dist/viewer.css\'\n \nVue.use(Viewer);\nViewer.setDefaults({\n  Options: { \"inline\": true, \"button\": true, \"navbar\": true, \"title\": true, \"toolbar\": true, \"tooltip\": true, \"movable\": true, \"zoomable\": true, \"rotatable\": true, \"scalable\": true, \"transition\": true, \"fullscreen\": true, \"keyboard\": true, \"url\": \"data-source\" }\n});\n\n```\n\nmain.js引用如下图：\n![article29.png](http://127.0.0.1:8081/articlePicture/root11746792190219806.png)\n\n\n3、在代码中使用插件\n\n在poetize-vue2\\src\\components\\article.vue找到文章vue页面，在下面《文章内容》处找到如下信息，使用 viewer 包住加载的文章信息的div\n\n```XML\n <!-- 文章内容 -->\n <viewer>\n <div v-html=\"articleContentHtml\" class=\"entry-content\"></div>\n </viewer>\n\n```\n![article30.png](http://127.0.0.1:8081/articlePicture/root11746792261426971.png)\n\n\n\n4、直接运行、打包，效果如下\n![article31.png](http://127.0.0.1:8081/articlePicture/root11746792305187159.png)\n\n\n注意：此插件与后台代码块同时使用，在手机上会不兼容，所以我把代码块区域去掉了，我也不知道怎么回事。\n最后，如果你有其他更好用的插件，欢迎骚扰！',NULL,0,0,1,NULL,NULL,0,1,'2025-05-09 20:06:22','2025-05-09 20:06:22',NULL,0),(17,1,5,13,'http://127.0.0.1:8081/articleCover/root11746793007703238.png',' vue-aplayer音乐播放器之QQ音乐接口获取数据','🎵之前一直想做一个博客音乐播放器，找了许久都没有找到合适的，于是这里推荐自己使用的一款移动端音频组件vue-aplayer，这个组件看起来相对简单点，就是样式方面不怎么好调试😭。\n![article32.png](http://127.0.0.1:8081/articlePicture/root11746792656233299.png)\n\n\n首先直接放上vue-aplayer的使用文档：vue-aplayer的使用文档\n\n具体怎么使用，可以先康康这个文档，下面我就简单介绍我自己使用的方法步骤：\n注意请确保你的 Vue.js 版本 >= 2.2.0\n🎵安装\n使用 npm\n```CMD\nnpm install @moefe/vue-aplayer --save\n```\n\n使用 yarn （推荐）\n```CMD\nyarn add @moefe/vue-aplayer\n\n```\n\n🎵创建一个vue页面music.vue\n\n🎵前台代码：\n```VUE\n<template>\n    <div id=\"aplayer\">\n    </div>\n</template>\n\n```\n\n🎵main.js文件里面引用插件：\n\nimport部分均可以在main.js里面自行引用，根据自身路径，没有加载到js和css的自己去https://vue-aplayer.js.org/ 去git下载\n```JAVASCRITPT\nimport APlayer from \'vue-aplayer\';\nimport \'./utils/APlayer.min.js\';\nVue.use(APlayer);\n\n```\n\n\n🎵script部分代码：\n（注意：下面使用的接口为个人部署的获取的数据为QQ音乐的歌单，目前已经去掉，无歌词显示，本鱼宝这里开启的是吸底模式）\n```JAVASCRIPT\nimport APlayer from \'aplayer\'\nimport \'aplayer/dist/APlayer.min.css\'\nimport \'../utils/APlayer.min.js\';\nimport axios from \'axios\';\n  \n  export default {\n    data() {\n      return {\n        musicList: []\n      }\n    },\n    mounted() {\n      // 开启加载动画\n      this.getMusicList().then(list => {\n      new APlayer({\n        container: document.getElementById(\'aplayer\'),\n      //   mini: false, //迷你模式\n      //   autoplay: false, //自动播放\n      //   theme: \'#FADFA3\', //主题颜色\n      //   loop: \'all\',  //音频循环播放, 可选值: \'all\', \'one\', \'none\'\n      //   order: \'random\', //音频循环顺序, 可选值: \'list\', \'random\'\n      //   preload: \'auto\', //预加载，可选值: \'none\', \'metadata\', \'auto\'\n      //   volume: 0.7, //默认音量，请注意播放器会记忆用户设置，用户手动设置音量后默认音量即失效\n      //   mutex: true, //互斥，阻止多个播放器同时播放，当前播放器播放时暂停其他播放器\n      //  // listFolded: false, //列表默认折叠\n      //   //listMaxHeight: 120, //列表最大高度\n      //   //listMaxWidth: 250,\n      //   fixed: true, //吸底模式 \n      mutex: true, //\n      mode: \'circulation\',\n       // fixed: true, // 开启吸底模式\n        listFolded: false, // 默认展开播放列表\n        audio: list\n      });\n  \n      // 关闭加载动画\n      // const expandButton = $(\'.aplayer-miniswitcher\');\n	    //   if (expandButton) {\n      //     alert(\"自动展开列表\");\n	    //     expandButton.click();\n	  	 \n	    //   }\n \n      //自动触发点击事件\n      // const aplayerMiniswitcher = document.querySelector(\'.aplayer-miniswitcher\');\n      // const clickEvent = new Event(\'click\');\n      // aplayerMiniswitcher.dispatchEvent(clickEvent);\n \n      //修改显示图标样式\n        // const aplayerInfo = document.querySelector(\'.aplayer-info\');\n        // aplayerInfo.style.display = \'block\';\n    });\n    },\n    methods: {\n      //获取歌单id\n      getPlayId() {\n        const host = \'https://api地址/api/music/all?page=1&limit=5&order=create_time%20asc&cache=true&lang=zh-cn\';\n        this.client(host, \'GET\', response => {\n          const data = response.data.data.data;\n          localStorage.setItem(\'playId\', data[0].id)\n        });\n      },\n      //获取歌曲列表\n      getMusicList() {\n        return new Promise((resolve, reject) => {\n        this.getPlayId();\n        const playId = localStorage.getItem(\'playId\');\n        const host = \'https://api地址/api/music/list?id=\' + playId + \'&shuffle=false&cache=true&lang=zh-cn\';\n        this.client(host, \'GET\', response => {\n          const songData = response.data.data.songs;\n          const list = [];\n  \n          Object.keys(songData).forEach((keys) => {\n            const songId = songData[keys].song_id;\n  \n            // 获取播放地址\n            this.client(\'https://api地址/api/music/list?id=\' + songId + \'&who=tencent&cache=true&lang=zh-cn&mode=song\', \'GET\', res => {\n              list.push(res.data.data);\n              if (list.length === Object.keys(songData).length) {\n                resolve(list);\n              }\n            });\n          })\n        });\n      });\n      },\n      client(url, method = \'GET\', response) {\n        const options = {\n          method: method,\n          url: url\n        };\n        axios.request(options).then(res => {\n          response(res);\n        }).catch(error => {\n          // 统一异常处理器\n          this.$message({\n              message: error.message,\n              type: \"error\"\n            });\n        });\n      }\n    }\n  }\n\n```\n\n\n \n最后把music.vue页面引用到index.vue页面里面，运行如下：\n![article32.png](http://127.0.0.1:8081/articlePicture/root11746792773845672.png)\n\n\nps：由于这个使用qq音乐获取歌单数据为个人接口部署，故我就不放出来了，除非你V我50。\n![article33.gif](http://127.0.0.1:8081/articlePicture/root11746792763203229.gif)\n',NULL,0,0,1,NULL,NULL,0,1,'2025-05-09 20:16:52','2025-05-09 20:16:52',NULL,0),(18,1,5,13,'http://127.0.0.1:8081/articleCover/root11746793689316688.gif',' vue-aplayer音乐播放器之网抑云音乐接口获取数据','🎵之前上一篇写的通过QQ音乐获取歌曲数据可能没那么直观，那么接下来这个就香了，支持多种歌单链接获取数据。支持歌词显示哦。++本鱼宝这里使用的仍然是吸底模式（可能与看板娘位置重合了，你可以看需要改其他位置看看，或者关闭看板娘）++。当然你也可以看下面的文档使用其他模式，本教程直接open。\n![article33.png](http://127.0.0.1:8081/articlePicture/root1174679513331415.png)\n\n\n\n🎵首先直接放上vue-aplayer的使用文档：vue-aplayer的使用文档\n\n🎵具体怎么使用，可以先康康这个文档，下面我就简单介绍我自己使用的方法步骤：\n注意请确保你的 Vue.js 版本 >= 2.2.0\n🎵安装\n使用 npm\n```CMD\nnpm install @moefe/vue-aplayer --save\n\n```\n使用 yarn （推荐）\n```CMD\nyarn add @moefe/vue-aplayer\n```\n\n🎵创建一个vue页面music.vue\n🎵前台代码：\n```XML\n<template>\n    <div id=\"app\">\n      <!-- 音乐播放器 -->\n      <div id=\"aplayer\"></div>\n  \n      <!-- 底部自定义音乐控制栏,需要自定义的可以自己去修改样式 -->\n      <div class=\"music-control\" style=\"display: none;\">\n        <div class=\"music-info\">\n          <span id=\"music-name\"></span>\n        </div>\n        <div class=\"music-buttons\" style=\"display: none;\">\n          <button @click=\"playLast\"><i class=\"fa-solid fa-step-backward\">⏮️</i></button>\n          <button @click=\"togglePlay\"><i :class=\"playIcon\"></i>▶️</button>\n          <button @click=\"playNext\"><i class=\"fa-solid fa-step-forward\">⏭️</i></button>\n        </div>\n      </div>\n    </div>\n  </template>\n```\n🎵main.js文件里面引用插件：\n\nimport部分均可以在main.js里面自行引用，根据自身路径，没有加载到js和css的自己去https://vue-aplayer.js.org/ 去git下载\n```JAVASCRIPT\nimport APlayer from \'vue-aplayer\';\nimport \'./utils/APlayer.min.js\';\nVue.use(APlayer);\n```\n\n🎵script部分代码：\n\n接口：目前测试的只有网易云和QQ音乐的，网易云可以获取，但。是这个接口获取的QQ音乐的感觉不稳，🪲下面的接口使用只需要改歌单id，点击分享歌单复制地址到浏览器就可以看到后面的id了。🪲如果你有更好的接口 也可以在下面留言。\n```JAVASCRIPT\nlet server = \"netease\"; //netease: 网易云音乐; tencent: QQ音乐; kugou: 酷狗音乐; xiami: 虾米; kuwo: 酷我\nlet type = \"playlist\"; //song: 单曲; playlist: 歌单; album: 唱片\nlet id = \"7452421335\"; //封面 ID / 单曲 ID / 歌单 ID\n      \nconst apiUrl = `https://api-meting.imsyy.top/api?server=${server}&type=${type}&id=${id}`;\n```\n\n  \n直接上代码：\n```JAVASCRIPT\nimport APlayer from \'vue-aplayer\';\nimport \'./utils/APlayer.min.js\';\nVue.use(APlayer);\n <script>\n   import APlayer from \'aplayer\'\n  import \'aplayer/dist/APlayer.min.css\'\n  import \'../utils/APlayer.min.js\';\n  import axios from \'axios\';\n     \n  export default {\n    data() {\n      return {\n        ap: null,\n        playIcon: \'fa-solid fa-play\'\n      }\n    },\n    methods: {\n      playLast() {\n        this.ap.skipBack();\n        this.ap.on(\'play\', () => {\n          const music = `${currentMusic.title} - ${currentMusic.author}`;\n          iziToast.info({\n            timeout: 4000,\n            icon: \"fa-solid fa-circle-play\",\n            displayMode: \'replace\',\n            message: music\n          });\n          $(\"#music-name\").text(`${currentMusic.title} - ${currentMusic.author}`);\n          this.playIcon = \'fa-solid fa-pause\';\n        });\n  \n        this.ap.on(\'pause\', () => {\n          this.playIcon = \'fa-solid fa-play\';\n        });\n  \n      },\n      handlePlay() {\n        const music = this.$refs.aplayer.$el.querySelector(\'.aplayer-title\').textContent + this.$refs.aplayer.$el.querySelector(\'.aplayer-author\').textContent;\n        iziToast.info({\n          timeout: 4000,\n          icon: \"fa-solid fa-circle-play\",\n          displayMode: \'replace\',\n          message: music\n        });\n        this.playIcon = \'fa-solid fa-pause\';\n        this.musicName = music;\n        if (window.innerWidth >= 990) {\n          this.showPower = false;\n          this.showLrc = true;\n        }\n      },\n      togglePlay() {\n        this.ap.toggle();\n      },\n      playNext() {\n        this.ap.skipForward();\n      }\n    },\n    mounted() {\n      let server = \"netease\"; //netease: 网易云音乐; tencent: QQ音乐; kugou: 酷狗音乐; xiami: 虾米; kuwo: 酷我\n      let type = \"playlist\"; //song: 单曲; playlist: 歌单; album: 唱片\n      let id = \"7452421335\"; //封面 ID / 单曲 ID / 歌单 ID\n      \n  \n      const apiUrl = `https://api-meting.imsyy.top/api?server=${server}&type=${type}&id=${id}`;\n  \n      fetch(apiUrl)\n        .then(response => response.json())\n        .then(data => {\n          this.ap = new APlayer({\n            container: document.getElementById(\'aplayer\'),\n            order: \'random\',\n            preload: \'auto\',\n            listMaxHeight: \'336px\',\n            fixed: \'true\',\n            float: true,\n            volume: 0.5,\n            mutex: true,\n            lrcType: 3,\n            audio: data,\n          });\n  \n          /* 底栏歌词 */\n          setInterval(() => {\n            $(\"#music-name\").html(\"<span class=\'lrc-show\'><svg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 24 24\' width=\'18\' height=\'18\'><path fill=\'none\' d=\'M0 0h24v24H0z\'/><path d=\'M12 13.535V3h8v3h-6v11a4 4 0 1 1-2-3.465z\' fill=\'rgba(255,255,255,1)\'/></svg>&nbsp;\" + $(\".aplayer-lrc-current\").text() + \"&nbsp;<svg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 24 24\' width=\'18\' height=\'18\'><path fill=\'none\' d=\'M0 0h24v24H0z\'/><path d=\'M12 13.535V3h8v3h-6v11a4 4 0 1 1-2-3.465z\' fill=\'rgba(255,255,255,1)\'/></svg></span>\");\n          }, 500);\n  \n          /* 音乐通知及控制 */\n          this.ap.on(\'play\', () => {\n            const currentMusic = this.ap.list.current;\n            this.playIcon = \'fa-solid fa-pause\';\n          });\n  \n          this.ap.on(\'pause\', () => {\n            this.playIcon = \'fa-solid fa-play\';\n          });\n  \n          window.onkeydown = (e) => {\n            if (e.keyCode === 32) {\n              this.ap.toggle();\n            }\n          };\n        })\n    }\n  }\n  </script>\n  \n<style>\n.music-control {\n  position: fixed;\n  bottom: 0;\n  left: 0;\n  width: 100%;\n  height: 60px;\n  background-color: rgba(231，221，221，0);\n  display: flex;\n  align-items: center;\n  justify-content: space-around;\n}\n.music-info {\n  font-size: 30px;\n /* color: linear-gradient(to right, #00FFFF, #FF00FF, #00FF00);\n background: linear-gradient(to right, #00FFFF, #FF00FF, #00FF00); */\n background-image: linear-gradient(to right, #fe0101, #00ff0d);\n 	color: transparent;\n 	-webkit-background-clip: text;\n \n  text-align: center;\n  z-index: 9999;\n  position: absolute;\n  left: 0;\n  right: 0;\n  margin: auto;\n}\n \n</style>\n \n最后把music.vue页面引用到index.vue页面里面，运行如下：\n\n网页版：\n![article33.png](http://127.0.0.1:8081/articlePicture/root11746795188287821.png)\n\n\n手机版：\n![article38.jpg](http://127.0.0.1:8081/articlePicture/root11746795198932506.jpg)\n\n\n最后：这个接口也是在网上借的，随便使用，如果你不想使用这个接口的 当然可以自己写个json文件焊死车门\n\n格式如下：\n```JSON\n data: {\n        audio: {\n          name: \'东西（Cover：林俊呈）\',\n          artist: \'纳豆\',\n          url: \'https://cdn.moefe.org/music/mp3/thing.mp3\',\n          cover: \'https://p1.music.126.net/5zs7IvmLv7KahY3BFzUmrg==/109951163635241613.jpg?param=300y300\', // prettier-ignore\n          lrc: \'https://cdn.moefe.org/music/lrc/thing.lrc\',\n        },\n      },\n }\n```',NULL,2,0,1,NULL,NULL,0,1,'2025-05-09 20:28:11','2025-05-09 20:53:33','root',0),(19,1,5,13,'http://127.0.0.1:8081/articleCover/root11746795518335889.jpg','博客左侧卡片版音乐播放器之网抑云','🎵前面介绍了QQ音乐和网易云音乐获取的，不过使用的都是 vue-aplayer音乐播放器的吸底模式，好像看起来也没什么，但是下面我在介绍一个，这个还未完成，目前有点问题，我不想努力了，有前端大佬的直接到群里V我2张黑丝，我给源码你修改。\n\n🎵运行如图：\n![article39.png](http://127.0.0.1:8081/articlePicture/root11746795478217431.png)\n\n🎵展开列表：\n![article40.png](http://127.0.0.1:8081/articlePicture/root11746795486606432.png)\n\n🎵浏览器手机版：\n![article41.png](http://127.0.0.1:8081/articlePicture/root11746795562955214.png)\n\n\n🪲目前就这样了，这个也是使用的网易云api，不过这个是部署在自己服务器上面的，相对速度稳定点。不要问我为什么不弄页面上面的，我的回答是：“戒了”。有想法想要修改的，直接V我。',NULL,0,0,1,NULL,NULL,0,1,'2025-05-09 20:59:31','2025-05-09 20:59:31',NULL,0),(20,1,5,13,'http://127.0.0.1:8081/articleCover/root11746795879320964.jpg',' vue-aplayer音乐播放器之json文件获取数据','哈哈，之前介绍的都是有api的，现在介绍这个是json文件焊死车门的，音乐数据可以丢七🐂☁上面，加载速度也是灰常快的。\n![article44.jpg](http://127.0.0.1:8081/articlePicture/root11746795817551839.jpg)\n\n\n首先直接放上vue-aplayer的使用文档：vue-aplayer的使用文档\n\n具体怎么使用，可以先康康这个文档，下面我就简单介绍我自己使用的方法步骤：\n注意请确保你的 Vue.js 版本 >= 2.2.0\n🎵安装\n使用 npm\n```CMD\nnpm install @moefe/vue-aplayer --save\n```\n\n\n使用 yarn （推荐）\n```language\nyarn add @moefe/vue-aplayer\n```\n\n🎵创建一个vue页面music.vue\n```XML\n<template>\n  <div>\n    <a-player\n      :music=\"currentMusic\"\n      :list=\"musicList\"\n      autoplay\n    />\n  </div>\n</template>\n \n<script>\nimport APlayer from \'vue-aplayer\';\nimport $ from \'jquery\';\n \nexport default {\n  fixed: true,\n  components: {\n    APlayer\n  },\n  data() {\n    return {\n      currentMusic: {}, // 当前播放的音乐\n      musicList: [] // 音乐列表\n    };\n  },\n  mounted() {\n    this.getMusicData();\n  },\n  methods: {\n    // 获取音乐数据\n    getMusicData() {\n      $.ajax({\n        url: \'../music.json\',\n        method: \'GET\',\n        success: (response) => {\n			console.log(response);\n          const musicData = Object.values(response);\n          if (musicData.length > 0) {\n            this.musicList = musicData;\n            this.currentMusic = musicData[0];\n          }\n        },\n        error: (error) => {\n          console.log(error);\n        }\n      });\n    }\n  }\n};\n</script>\n\n```\n\n🎵json文件格式：\n\n注意：这个是我从qq音乐接口获取的数据，不保证每个url都可以使用，你可以把里面的地址替换成自己的歌曲地址\n```JSON\n[\n    {\n        \"title\": \"那女孩对我说\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500001SxnXC2uC7iu.mp3?guid=314482588&vkey=C904015B09080CA3BE7BAC750D2EDA230D0B5B608F6D737B12CE8BB41BCC3EBA169E3F46D71B09EDEA9FFD4CD4B9EA904BB2181CFD43628E&uin=&fromtag=120042\",\n        \"song_id\": \"002Y4Boi3Jdh2c\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000002GGOwz2WtKcM.jpg?max_age=2592000\",\n        \"artist\": \"周黑猫\"\n    },\n    {\n        \"title\": \"起风了\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500002J3L3S3suxlD.mp3?guid=146182690&vkey=7BAB2DDAA4C34A3200A2EA59F4FC17D66FC6A6687CDA6EEDD52F0844E9DB5BE82107BD3A6832D5D36CCF06C7A9D19B051F2A7003D3F24D83&uin=&fromtag=120042&src=M500003m2sQw02KtPM.mp3\",\n        \"song_id\": \"002w57E00BGzXn\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000000CVCqK4aEW0M.jpg?max_age=2592000\",\n        \"artist\": \"周深\"\n    },\n    {\n        \"title\": \"虞兮叹\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500003XLQH62xVz8q.mp3?guid=1800372171&vkey=1D00C03C46EF7483DA98AC4192E37B72A5F3F68B92D2AF82D1951582FB26E4D756B9D48FF072A416244322F374460D255B5FA9D15AFC5F00&uin=&fromtag=120042\",\n        \"song_id\": \"003Cq5Jd3Rq2Mg\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000003JcO560RtmXN.jpg?max_age=2592000\",\n        \"artist\": \"闻人听書_\"\n    },\n    {\n        \"title\": \"像鱼\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500000NHikR1jV7Zz.mp3?guid=1853568543&vkey=C69369A6FD39A839CCDD2DAE73BC9BD51DFE1A51DF835CA12A310FDFF4B337E023802A02E4D9F95F27DB7A7CC25AE9EA95D5518656D555DE&uin=&fromtag=120042\",\n        \"song_id\": \"000NHikR1jV7Zz\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000001Zrk6t0urxvG.jpg?max_age=2592000\",\n        \"artist\": \"王贰浪\"\n    },\n    {\n        \"title\": \"怎么做怎么过怎么活\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500003Qtssx4eWdIw.mp3?guid=351288014&vkey=49C6DB0D20C9C415AADB5A183A7144B887365F573F0B4D7E921076E03F943B8528A2BF6BEC981D034AC00443C0734E497F36CEAC48FB4AD9&uin=&fromtag=120042\",\n        \"song_id\": \"003Qtssx4eWdIw\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M0000045jcPa1KIfYD.jpg?max_age=2592000\",\n        \"artist\": \"黄静美\"\n    },\n    {\n        \"title\": \"世界这么大还是遇见你\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500001T67o81ulY6Y.mp3?guid=1587665134&vkey=FD9E931B11A4843F8897FDDB417E87B305238E1D3B66F22E646605DF1F031EBF2D2321183BD50D4E6857B824725BB41BA53246B81F940C30&uin=&fromtag=120042\",\n        \"song_id\": \"001xLIXo2w9V7U\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000003Ls5Jo4EFBIH.jpg?max_age=2592000\",\n        \"artist\": \"程响\"\n    },\n    {\n        \"title\": \"不染\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500001euqHi2Zfe0c.mp3?guid=1324361845&vkey=404D1DC4E7583721C2ED4F3BB9FDE8FAD02D1D5AEC0EDA6748EAA156DA7939E1B79C5C92A6AA48C88BE66DE5BA3F9E9AA853148A3176129F&uin=&fromtag=120042\",\n        \"song_id\": \"0041EAWY2D9o9j\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000002xSwB5359vcP.jpg?max_age=2592000\",\n        \"artist\": \"简弘亦\"\n    },\n    {\n        \"title\": \"左手指月\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500004dXKsj3zgZmt.mp3?guid=1645121696&vkey=532B4C68DC877ED92F63F5F939529C01FD910345C7F23B626AE415AAD5263551691E27296159B51679630E9BD4E3F3C3157965BD3E4A9DEB&uin=&fromtag=120042\",\n        \"song_id\": \"004dXKsj3zgZmt\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000003r1aIR4Dbaj7.jpg?max_age=2592000\",\n        \"artist\": \"李雨桐\"\n    },\n    {\n        \"title\": \"来自天堂的魔鬼\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500001DI2Jj3Jqve9.mp3?guid=1400372480&vkey=0D26B9B1314EEE6F6899C6655BFEFA80FA04461C72834FC64D614E5510221161A47D9475D0876BEED53B52A4F9FD3302A452BA8D757BC660&uin=&fromtag=120042&src=M500004P9aP23uxVjR.mp3\",\n        \"song_id\": \"004dFFPd4JNv8q\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000003c616O2Zlswm.jpg?max_age=2592000\",\n        \"artist\": \"G.E.M. 邓紫棋\"\n    },\n    {\n        \"title\": \"ROKEY--我的花木兰\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M5000016lBCw2e95JZ.mp3?guid=1494882833&vkey=A4AF36ED003E3419B2439625AF9E5D98F044AFC090B3682063F44A346803F7670FB255A7BE976F9BCEAE1AB75478A943DD555980EAA2574E&uin=&fromtag=120042\",\n        \"song_id\": \"001S7J7P07oSCE\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M0000039y3cU3E14oX.jpg?max_age=2592000\",\n        \"artist\": \"舞曲\"\n    },\n    {\n        \"title\": \"心如止水\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500001t2ilc29OBjZ.mp3?guid=1876859895&vkey=7780E255C4B6414C9549282760F9CD856CCD3544E0005E6D02974025D9B72A4C6E8690FC1CC0ED3F19F78BB81F40A5541BE4C82E7BA2B3E8&uin=&fromtag=120042&src=M500001w4Qr00b2XzJ.mp3\",\n        \"song_id\": \"003ebMYY2PGmn6\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M0000021N8xr0xq1Fp.jpg?max_age=2592000\",\n        \"artist\": \"Ice Paper\"\n    },\n    {\n        \"title\": \"清明上河图\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500001UfK5T1Qofad.mp3?guid=435132470&vkey=786984873C736F2432C2E77E2897FEC2180B0E68CCB4AB88F89BAE2C1DD9C144369A34637DEF7CD2582B1C08CF7465D2E0F68BB3C15F8293&uin=&fromtag=120042\",\n        \"song_id\": \"000HIb481OqGlQ\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000003WscFz0L8T6F.jpg?max_age=2592000\",\n        \"artist\": \"李玉刚\"\n    },\n    {\n        \"title\": \"可不可以\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500000T1e301Zzbih.mp3?guid=1765253438&vkey=0B37B7511E5B9191B4AFFCA56844CED0B0A1B08CA8E5A5B86B4946B2CCBA41DFB100D8B8A1931D126EAB76A0E1F6D1478F3F3A4710210BB1&uin=&fromtag=120042\",\n        \"song_id\": \"000x2ZyK1FYFht\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000004VR1w241uBhB.jpg?max_age=2592000\",\n        \"artist\": \"张紫豪\"\n    },\n    {\n        \"title\": \"纸短情长\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500003d1qfg0MlYh8.mp3?guid=1836832403&vkey=E362886618EBD14CD31F3F4E6CC514715C4675C605EAEFA570EF81A317A67BAD4436D70B280724DB5D44F3532F70079C3B5FBA7F0048783A&uin=&fromtag=120042\",\n        \"song_id\": \"000C0joK1H4ZMY\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000000KTkTG1pWtB9.jpg?max_age=2592000\",\n        \"artist\": \"烟把儿乐队\"\n    },\n    {\n        \"title\": \"年少有为\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500001VHOdc4cjkBu.mp3?guid=1278294780&vkey=E30802EA1740A26048F19C331756F7E1056C0D76ADB9FD268226D720A73D0EBC3E9A46CBEDC60D4F11177489DF2C0F1E1E9015F50F9C2E8A&uin=&fromtag=120042&src=M500002MPLym4883Av.mp3\",\n        \"song_id\": \"004DXFlC0nsTCZ\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000004QnEHc3zjC7J.jpg?max_age=2592000\",\n        \"artist\": \"李荣浩\"\n    },\n    {\n        \"title\": \"爱情的骗子我问你\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500002iJ00a2BBZeO.mp3?guid=1882596510&vkey=4306AD481EB219AB36A755E718D41BC8587810EBEAF7463678B5E24E4AC2B421A09BF0A8FC8B7C1D5CAA9E24B6EF5E28F064DD56E2284E8F&uin=&fromtag=120042\",\n        \"song_id\": \"0043Pbyo2YGB8k\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000001YwZbI1NsmW5.jpg?max_age=2592000\",\n        \"artist\": \"陈小云\"\n    },\n    {\n        \"title\": \"All About That Bass\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500002cEBkL0RAXyr.mp3?guid=745982273&vkey=F365DE4078ABCFFCE908FD3B19A206923FE99FFB48C3A0676DA75CEF43F283F9081783D6D056A2D5DA0874CB6F8E5AF195624B38BC865EB4&uin=&fromtag=120042\",\n        \"song_id\": \"002t3jV52H1Fy4\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000000JC6cG0oD0sr.jpg?max_age=2592000\",\n        \"artist\": \"Meghan Trainor\"\n    },\n    {\n        \"title\": \"等你等到我心痛\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500003KIxJF1o2fGT.mp3?guid=1593383494&vkey=3A80BC17ED230C0117CC6DF7338FCFF580875CF48D2CE93A32A3E1A9AD0699C1BE7C20749089C35AA548301F8E6CF85223599D6655C7D01E&uin=&fromtag=120042\",\n        \"song_id\": \"004W0XY80g2dbp\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000004dQKid1SiV2C.jpg?max_age=2592000\",\n        \"artist\": \"张学友\"\n    },\n    {\n        \"title\": \"爱是我和你\",\n        \"url\": \"https://dl.stream.qqmusic.qq.com/M500000jRbD80OVG3f.mp3?guid=779795371&vkey=F6A02A15E4A7573CEB6722873DD527BA6B22D24628074679EAD61E1C648C94B2AFF167F9C83DC075FD21F2FF574865E239BA338A0BF8B716&uin=&fromtag=120042&src=M500000fDgaN0nMPTc.mp3\",\n        \"song_id\": \"000fDgaN0nMPTc\",\n        \"pic\": \"https://y.gtimg.cn/music/photo_new/T002R300x300M000003evzxL0RONDd.jpg?max_age=2592000\",\n        \"artist\": \"马磊\"\n    }\n]\n```\n\n运行如下：\n![article45.png](http://127.0.0.1:8081/articlePicture/root11746795847837602.png)\n\n',NULL,0,0,1,NULL,NULL,0,1,'2025-05-09 21:04:41','2025-05-09 21:04:41',NULL,0),(21,1,6,16,'http://127.0.0.1:8081/articleCover/root11746796082269688.png','后端接口测试','测试1\n我不好也不坏不特别出众，我只是敢不同。我的人生就是一错再错，错忘了再从头。也许放弃掉一些活得更轻松，我却不再是我。我不愿意一生晒太阳吹风，咸鱼也要有梦。\n\n测试2\n我不好也不坏不特别出众，我只是敢不同。我的人生就是一错再错，错忘了再从头。也许放弃掉一些活得更轻松，我却不再是我。我不愿意一生晒太阳吹风，咸鱼也要有梦。\n\n测试3\n```JAVA\nimport com.cmhb.cmcc.core.bean.UserAgent; // 定义用户实体类，后台用户的session持久化对象\nimport com.cmhb.cmcc.module.customer.domain.CustomerChangeLog; // 定义日志实体类，对应表 tc_customer_change_log\nimport com.cmhb.cmcc.module.customer.constants.customer.EntityTypeEnum; // 枚举类信息，定义如客户信息，合同信息，所属公司等等，即定位到该条记录操作的业务\nimport com.cmhb.cmcc.module.customer.constants.customer.MethodTypeEnum; // 枚举类信息，定义如新增，更新，删除等等，即定位到该条记录的操作行为\nimport org.apache.shiro.SecurityUtils; // 工具函数，用于身份验证的\nimport com.cmhb.cmcc.module.customer.service.CustomerChangeLogService; // 日志service层实现，服务类\n \n    @Autowired\n    CustomerChangeLogService customerChangeLogService;\n \n    // 新增\n    @PostMapping(value= \"/blacklist\")\n    public void insert(@RequestBody CustomerBlacklist customerBlacklist) {\n        customerBlacklistService.insertBlacklist(customerBlacklist);\n \n        // 新增黑名单日志\n        if (customerBlacklist.getProductCode() != null) {\n            val changelog = new CustomerChangeLog();\n            changelog.setEntity(EntityTypeEnum.BLACKLIST.value());\n            changelog.setType(MethodTypeEnum.NEW.value());\n            changelog.setCustomerCode(customerBlacklist.getCustomerCode());\n            changelog.setEntityId(customerBlacklist.getId());\n            UserAgent user = (UserAgent) SecurityUtils.getSubject().getPrincipal();\n            changelog.setOperateId(user.getUsername());\n            customerChangeLogService.insert(changelog);\n        }\n    }\n \n\n\n```\n',NULL,0,0,1,NULL,NULL,0,1,'2025-05-09 21:09:29','2025-05-09 21:09:40','root',0),(22,1,6,16,'http://127.0.0.1:8081/articleCover/root1174679638091410.jpg',' markdown插入视频','该功能未实现，目前支持一个视频资源播放\n\n```language\n\n\n```\n','http://127.0.0.1:8081/video/video1.mp4',1,0,1,NULL,NULL,0,1,'2025-05-09 21:13:07','2025-05-09 21:14:12','root',0),(23,1,6,16,'http://127.0.0.1:8081/articleCover/root11746796669170866.jpg',' cpdd，我瑶妹和飞飞公举贼6❗','![article45.jpg](http://127.0.0.1:8081/articlePicture/root11746796571764272.jpg)\n\ncpdd，我瑶妹和飞飞公举贼6❗\n![article46.jpg](http://127.0.0.1:8081/articlePicture/root11746796601788591.jpg)',NULL,0,0,1,NULL,NULL,0,1,'2025-05-09 21:17:57','2025-05-09 21:17:57',NULL,0),(24,1,7,15,'http://127.0.0.1:8081/articleCover/root1174679723256133.png',' 宝塔面板使用Docker部署Minio','🌺Minio简介\nMinio是一款高性能、分布式的对象存储服务，可在私有云或公共云环境中部署。它兼容Amazon S3 API，提供强大的存储和管理功能，包括版本控制、数据加密和访问控制。Minio采用轻量级的设计，易于部署和扩展，同时具有高度可靠性和可用性，适用于各种规模的数据存储需求。\n\n🌺Minio的好处和缺点如下：\n好处：\n兼容性：Minio与Amazon S3 API兼容，方便现有应用迁移或集成。\n高性能：Minio支持并行化操作，提供高吞吐量和低延迟的存储性能。\n扩展性：Minio支持分布式存储架构，便于横向扩展以满足不断增长的数据存储需求。\n数据保护：提供数据分片和冗余复制功能，保障数据的可靠性和可用性。\n易部署：Minio设计轻量，支持Docker等容器化部署，部署简单。\n社区支持：拥有活跃的开源社区，提供技术支持和持续更新。\n\n缺点：\n生态系统相对较小：相较于更成熟的对象存储服务，Minio的第三方集成和插件可能较少。\n学习曲线：部分特性和功能需要时间学习和掌握，对新用户来说可能需要投入一定的时间。\n官方支持：虽然社区活跃，但官方支持可能没有商业存储解决方案那么全面。\n适应性：一些特定的场景和功能需求可能需要额外的定制和配置。\n\n🌺docker部署:\n拉取minio镜像\n\n```BASH\ndocker pull minio/minio\n```\n![article47.png](http://127.0.0.1:8081/articlePicture/root11746797057618748.png)\n\n🌺启动容器\n⚠️注意:–console-address指定MinIO Console的运行端口（否则会以随机端口运行）\nuser：minio\npwd：minio123456\n⚠️用户密码可在启动的时候自行更改\n\n```BASH\ndocker run -p 9000:9000 -p 9001:9001 --name minio \\\n--restart=always \\\n-v /home/minio/data:/data \\\n-e MINIO_ROOT_USER=minio \\\n-e MINIO_ROOT_PASSWORD=minio123456 \\\n-d minio/minio server /data --console-address \":9001\"\n```\n\n部署完成在浏览器输入服务器ip+9000端口回车即可看到界面了，记得在服务器添加规则开放9000和9001端口哦\n![article48.png](http://127.0.0.1:8081/articlePicture/root11746797074834400.png)\n\n\n🌺防火墙添加开放/查看端口\n```BASH\nfirewall-cmd --zone=public --add-port=9000/tcp --permanent   # 开放9000端口\n \nfirewall-cmd --zone=public --add-port=9090/tcp --permanent   # 开放9090端口\n \nfirewall-cmd --reload   # 配置立即生效\nfirewall-cmd --zone=public --list-ports   #查看防火墙所有开放的端口\n```\n\n🌺登录配置Minio访问规则为公共\n首先登录上面你配置的用户和密码，进入控制台,创建一个Bucket如下：\n![article49.png](http://127.0.0.1:8081/articlePicture/root11746797086462314.png)\n\n然后点击Bucket，把访问规则改成公共的，这样就可以方便访问文件了\n![article50.png](http://127.0.0.1:8081/articlePicture/root11746797098942619.png)\n\n\n🌺Nginx配置反向代理绑定域名访问\n在文件路径下新建一个ng配置文件，路径随意如下：\n/www/server/nginx/conf/vhost/minioss.conf\n\n编辑配置文件：\n```BASH\nserver {\n    listen 80;\n    server_name oss.sb250.fun;\n \n    # 文件上传限制\n    client_max_body_size 300m;\n    \n    #root /path/to/root;  # 将 \"/path/to/root\" 替换为您的实际网站根目录\n \n    #index index.html index.htm;\n \n    # 重定向到指定错误页面（如果文件没有后缀）\n    error_page 404 /error404.html;\n    \n    location / {\n        root index.html;  # 设置请求的根目录为 index.html，可能应该是 root /path/to/root;\n        index index.html index.htm;\n        if ($request_uri !~* \\.(.*)$) {  # 如果请求的URI不包含任何后缀\n            return 404;  # 返回404错误\n        }\n \n        proxy_pass http://localhost:9000;  # 反向代理到本地9000端口\n        proxy_set_header Host $host;\n        proxy_set_header X-Real-IP $remote_addr;\n        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;\n        proxy_set_header X-Forwarded-Proto $scheme;\n		proxy_redirect off;  # 禁用代理重定向\n		proxy_connect_timeout 310;  # 设置代理连接超时时间\n		proxy_send_timeout 310;  # 设置代理发送超时时间\n		proxy_read_timeout 310;  # 设置代理读取超时时间\n    }\n    \n    # 配置blog桶\n    # location /blog {\n    #     proxy_pass http://localhost:9000;\n    #     proxy_set_header Host $host;\n    #     proxy_set_header X-Real-IP $remote_addr;\n    #     proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;\n    #     proxy_set_header X-Forwarded-Proto $scheme;\n    # }\n \n    location = /error404.html {\n        internal;\n        root /path/to/error/pages;  # 将 \"/path/to/error/pages\" 替换为存放错误页面的实际路径\n    }\n}\n```\n\n🌺配置完成就可以使用域名+（端口）访问Minio的控制台\n![article51.png](http://127.0.0.1:8081/articlePicture/root11746797110280137.png)\n',NULL,0,0,1,NULL,NULL,0,1,'2025-05-09 21:27:52','2025-05-09 21:29:27','root',0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `source` int NOT NULL COMMENT '评论来源标识',
  `type` varchar(32) NOT NULL COMMENT '评论来源类型',
  `parent_comment_id` int NOT NULL DEFAULT '0' COMMENT '父评论ID',
  `user_id` int NOT NULL COMMENT '发表用户ID',
  `floor_comment_id` int DEFAULT NULL COMMENT '楼层评论ID',
  `parent_user_id` int DEFAULT NULL COMMENT '父发表用户名ID',
  `like_count` int NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_content` varchar(1024) NOT NULL COMMENT '评论内容',
  `comment_info` varchar(256) DEFAULT NULL COMMENT '评论额外信息',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `source` (`source`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文章评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,0,'message',0,1,NULL,NULL,0,'欢迎留言～～～',NULL,'2025-05-09 21:35:03'),(2,0,'message',0,1,NULL,NULL,0,'欢迎留言～～～',NULL,'2025-05-09 21:35:05'),(3,0,'message',0,1,NULL,NULL,0,'欢迎留言呀～～～',NULL,'2025-05-09 21:35:11'),(4,1,'love',0,1,NULL,NULL,0,'欢迎留言呀～～～',NULL,'2025-05-09 21:35:28');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int NOT NULL COMMENT '用户ID',
  `bg_cover` varchar(256) NOT NULL COMMENT '背景封面',
  `man_cover` varchar(256) NOT NULL COMMENT '男生头像',
  `woman_cover` varchar(256) NOT NULL COMMENT '女生头像',
  `man_name` varchar(32) NOT NULL COMMENT '男生昵称',
  `woman_name` varchar(32) NOT NULL COMMENT '女生昵称',
  `timing` varchar(32) NOT NULL COMMENT '计时',
  `countdown_title` varchar(32) DEFAULT NULL COMMENT '倒计时标题',
  `countdown_time` varchar(32) DEFAULT NULL COMMENT '倒计时时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用[0:否，1:是]',
  `family_info` varchar(1024) DEFAULT NULL COMMENT '额外信息',
  `like_count` int NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最终修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='家庭信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (1,1,'http://127.0.0.1:8081/love/bgCover/root11746774218903196.jpg','http://127.0.0.1:8081/love/manCover/root11746774242146235.JPG','http://127.0.0.1:8081/love/womanCover/root11746798867860157.png','云朵','mm','2025-05-03 14:55:26','第一次见面','2025-05-03 15:02:15',0,'给大佬递饭～求原谅',0,'2025-05-09 14:48:56','2025-05-09 14:48:56');
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_info`
--

DROP TABLE IF EXISTS `history_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(128) NOT NULL COMMENT 'ip',
  `nation` varchar(64) DEFAULT NULL COMMENT '国家',
  `province` varchar(64) DEFAULT NULL COMMENT '省份',
  `city` varchar(64) DEFAULT NULL COMMENT '城市',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='历史信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_info`
--

LOCK TABLES `history_info` WRITE;
/*!40000 ALTER TABLE `history_info` DISABLE KEYS */;
INSERT INTO `history_info` VALUES (1,NULL,'192.168.31.65',NULL,NULL,'内网IP','2025-05-09 14:03:24'),(2,1,'192.168.31.65',NULL,NULL,'内网IP','2025-05-09 14:04:31'),(3,NULL,'192.168.31.65',NULL,NULL,'内网IP','2025-05-10 00:02:43'),(4,1,'192.168.31.65',NULL,NULL,'内网IP','2025-05-10 00:02:43');
/*!40000 ALTER TABLE `history_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `im_chat_group`
--

DROP TABLE IF EXISTS `im_chat_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `im_chat_group` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `group_name` varchar(32) NOT NULL COMMENT '群名称',
  `master_user_id` int NOT NULL COMMENT '群主用户ID',
  `avatar` varchar(256) DEFAULT NULL COMMENT '群头像',
  `introduction` varchar(128) DEFAULT NULL COMMENT '简介',
  `notice` varchar(1024) DEFAULT NULL COMMENT '公告',
  `in_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '进入方式[0:无需验证，1:需要群主或管理员同意]',
  `group_type` tinyint NOT NULL DEFAULT '1' COMMENT '类型[1:聊天群，2:话题]',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='聊天群';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `im_chat_group`
--

LOCK TABLES `im_chat_group` WRITE;
/*!40000 ALTER TABLE `im_chat_group` DISABLE KEYS */;
INSERT INTO `im_chat_group` VALUES (-1,'公共聊天室',1,NULL,'公共聊天室','欢迎光临！',0,1,'2025-05-09 13:58:44');
/*!40000 ALTER TABLE `im_chat_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `im_chat_group_user`
--

DROP TABLE IF EXISTS `im_chat_group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `im_chat_group_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `group_id` int NOT NULL COMMENT '群ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `verify_user_id` int DEFAULT NULL COMMENT '审核用户ID',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `admin_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否管理员[0:否，1:是]',
  `user_status` tinyint NOT NULL COMMENT '用户状态[0:未审核，1:审核通过，2:禁言]',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='聊天群成员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `im_chat_group_user`
--

LOCK TABLES `im_chat_group_user` WRITE;
/*!40000 ALTER TABLE `im_chat_group_user` DISABLE KEYS */;
INSERT INTO `im_chat_group_user` VALUES (1,-1,1,NULL,NULL,1,1,'2025-05-09 13:58:44');
/*!40000 ALTER TABLE `im_chat_group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `im_chat_user_friend`
--

DROP TABLE IF EXISTS `im_chat_user_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `im_chat_user_friend` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int NOT NULL COMMENT '用户ID',
  `friend_id` int NOT NULL COMMENT '好友ID',
  `friend_status` tinyint NOT NULL COMMENT '朋友状态[0:未审核，1:审核通过]',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='好友';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `im_chat_user_friend`
--

LOCK TABLES `im_chat_user_friend` WRITE;
/*!40000 ALTER TABLE `im_chat_user_friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `im_chat_user_friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `im_chat_user_group_message`
--

DROP TABLE IF EXISTS `im_chat_user_group_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `im_chat_user_group_message` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `group_id` int NOT NULL COMMENT '群ID',
  `from_id` int NOT NULL COMMENT '发送ID',
  `to_id` int DEFAULT NULL COMMENT '接收ID',
  `content` varchar(1024) NOT NULL COMMENT '内容',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='群聊记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `im_chat_user_group_message`
--

LOCK TABLES `im_chat_user_group_message` WRITE;
/*!40000 ALTER TABLE `im_chat_user_group_message` DISABLE KEYS */;
INSERT INTO `im_chat_user_group_message` VALUES (1,-1,1,NULL,'你好👋','2025-05-09 22:54:17');
/*!40000 ALTER TABLE `im_chat_user_group_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `im_chat_user_message`
--

DROP TABLE IF EXISTS `im_chat_user_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `im_chat_user_message` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `from_id` int NOT NULL COMMENT '发送ID',
  `to_id` int NOT NULL COMMENT '接收ID',
  `content` varchar(1024) NOT NULL COMMENT '内容',
  `message_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已读[0:未读，1:已读]',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `union_index` (`to_id`,`message_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='单聊记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `im_chat_user_message`
--

LOCK TABLES `im_chat_user_message` WRITE;
/*!40000 ALTER TABLE `im_chat_user_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `im_chat_user_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `label` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sort_id` int NOT NULL COMMENT '分类ID',
  `label_name` varchar(32) NOT NULL COMMENT '标签名称',
  `label_description` varchar(256) NOT NULL COMMENT '标签描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='标签';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
INSERT INTO `label` VALUES (1,1,'🔖 玫瑰 ','🔖 玫瑰 '),(2,1,'🔖 守望 ','🔖 守望 '),(3,1,'🔖 人性 ','🔖 人性 '),(4,2,'🔖 网站呀~ ','🔖 网站呀~ '),(5,2,'🔖 部署 ','🔖 部署 '),(6,3,'🔖 Vue前端 ','🔖 Vue前端 '),(7,3,'🔖 我一个干后端的，哪里懂什么前端 ','🔖 我一个干后端的，哪里懂什么前端 '),(8,3,'🔖 白天黑夜开关 ','🔖 白天黑夜开关 '),(9,3,'🔖 分享按钮 ','🔖 分享按钮 '),(10,3,'🔖 FPS ','🔖 FPS '),(11,3,'🔖 登录 ','🔖 登录 '),(12,4,'🔖 博客美化 ','🔖 博客美化 '),(13,5,'🔖 博客音乐播放器 ','🔖 博客音乐播放器 '),(14,6,'🔖 Minio ','🔖 Minio '),(15,7,'🔖 Minio ','🔖 Minio '),(16,6,'游戏呀～','游戏呀～');
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int NOT NULL COMMENT '用户ID',
  `type` varchar(32) NOT NULL COMMENT '资源类型',
  `path` varchar(256) NOT NULL COMMENT '资源路径',
  `size` int DEFAULT NULL COMMENT '资源内容的大小，单位：字节',
  `original_name` varchar(512) DEFAULT NULL COMMENT '文件名称',
  `mime_type` varchar(256) DEFAULT NULL COMMENT '资源的 MIME 类型',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用[0:否，1:是]',
  `store_type` varchar(16) DEFAULT NULL COMMENT '存储平台',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_path` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='资源信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,1,'love/manCover','http://127.0.0.1:8081/love/manCover/root1174677312679498.JPG',130431,'love.JPG','image/jpeg',1,'local','2025-05-09 14:45:26'),(2,1,'love/womanCover','http://127.0.0.1:8081/love/womanCover/root11746773139656971.jpg',32621,'love1.jpg','image/jpeg',1,'local','2025-05-09 14:45:39'),(3,1,'love/bgCover','http://127.0.0.1:8081/love/bgCover/root11746773332197560.jpg',836390,'background6.jpg','image/jpeg',1,'local','2025-05-09 14:48:53'),(4,1,'love/bgCover','http://127.0.0.1:8081/love/bgCover/root11746774218903196.jpg',836390,'background6.jpg','image/jpeg',1,'local','2025-05-09 15:03:38'),(5,1,'love/manCover','http://127.0.0.1:8081/love/manCover/root11746774242146235.JPG',130431,'love.JPG','image/jpeg',1,'local','2025-05-09 15:04:02'),(6,1,'love/womanCover','http://127.0.0.1:8081/love/womanCover/root11746774249761924.jpg',32621,'love1.jpg','image/jpeg',1,'local','2025-05-09 15:04:09'),(7,1,'webBackgroundImage','http://127.0.0.1:8081/webBackgroundImage/root11746777354772788.jpg',797289,'background18.jpg','image/jpeg',1,'local','2025-05-09 15:55:54'),(8,1,'webAvatar','http://127.0.0.1:8081/webAvatar/root11746777369175502.webp',16764,'touxiang.webp','image/webp',1,'local','2025-05-09 15:56:09'),(9,1,'randomAvatar','http://127.0.0.1:8081/randomAvatar/root11746777628695243.webp',16764,'touxiang.webp','image/webp',1,'local','2025-05-09 16:00:28'),(10,1,'randomAvatar','http://127.0.0.1:8081/randomAvatar/root1174677762869519.jpg',32621,'love1.jpg','image/jpeg',1,'local','2025-05-09 16:00:28'),(11,1,'randomAvatar','http://127.0.0.1:8081/randomAvatar/root11746777628694256.JPG',130431,'love.JPG','image/jpeg',1,'local','2025-05-09 16:00:28'),(12,1,'randomCover','http://127.0.0.1:8081/randomCover/root11746777702066130.jpg',639793,'background4.jpg','image/jpeg',1,'local','2025-05-09 16:01:42'),(13,1,'randomCover','http://127.0.0.1:8081/randomCover/root1174677770206698.jpg',475764,'background3.jpg','image/jpeg',1,'local','2025-05-09 16:01:42'),(14,1,'randomCover','http://127.0.0.1:8081/randomCover/root1174677770206685.jpg',434000,'background2.jpg','image/jpeg',1,'local','2025-05-09 16:01:42'),(15,1,'randomCover','http://127.0.0.1:8081/randomCover/root11746777702066215.jpg',914792,'background5.jpg','image/jpeg',1,'local','2025-05-09 16:01:42'),(16,1,'randomCover','http://127.0.0.1:8081/randomCover/root11746777818430993.jpg',624364,'background15.jpg','image/jpeg',1,'local','2025-05-09 16:03:38'),(17,1,'randomCover','http://127.0.0.1:8081/randomCover/root11746778640273121.jpg',797289,'background18.jpg','image/jpeg',1,'local','2025-05-09 16:17:20'),(18,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746778995760731.jpg',894214,'background10.jpg','image/jpeg',1,'local','2025-05-09 16:23:15'),(19,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746779758896497.jpg',1374916,'background7.jpg','image/jpeg',1,'local','2025-05-09 16:35:58'),(20,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746780033072996.png',91300,'article.png','image/png',1,'local','2025-05-09 16:40:33'),(21,1,'articleCover','http://127.0.0.1:8081/articleCover/root1174678006715491.png',91300,'article.png','image/png',1,'local','2025-05-09 16:41:07'),(22,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746780442334818.png',930088,'article1.png','image/png',1,'local','2025-05-09 16:47:22'),(23,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746780483394436.png',930088,'article1.png','image/png',1,'local','2025-05-09 16:48:03'),(24,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746781591802376.png',1335816,'截屏2025-05-09 17.05.36.png','image/png',1,'local','2025-05-09 17:06:31'),(25,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746786739457615.jpg',45747,'article2.jpg','image/jpeg',1,'local','2025-05-09 18:32:19'),(26,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746786778109128.jpg',45747,'article2.jpg','image/jpeg',1,'local','2025-05-09 18:32:58'),(27,1,'webAvatar','http://127.0.0.1:8081/webAvatar/root11746787207751677.webp',16764,'touxiang.webp','image/webp',1,'local','2025-05-09 18:40:07'),(28,1,'webAvatar','http://127.0.0.1:8081/webAvatar/root11746787364211448.png',16764,'touxiang.png','image/png',1,'local','2025-05-09 18:42:44'),(29,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746787884774531.png',1398423,'article3.png','image/png',1,'local','2025-05-09 18:51:24'),(30,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746787903249264.png',1398423,'article3.png','image/png',1,'local','2025-05-09 18:51:43'),(31,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746788756142833.png',2589889,'article6.png','image/png',1,'local','2025-05-09 19:05:56'),(32,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746788766505200.png',63702,'article8.png','image/png',1,'local','2025-05-09 19:06:06'),(33,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746788779536936.png',14508,'article5.png','image/png',1,'local','2025-05-09 19:06:19'),(34,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746788790889620.gif',722881,'article4.gif','image/gif',1,'local','2025-05-09 19:06:30'),(35,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746788802621677.png',63702,'article8.png','image/png',1,'local','2025-05-09 19:06:42'),(36,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746789259513911.png',54985,'article9.png','image/png',1,'local','2025-05-09 19:14:19'),(37,1,'articleCover','http://127.0.0.1:8081/articleCover/root1174678977183947.png',1336171,'article10.png','image/png',1,'local','2025-05-09 19:22:51'),(38,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746789944700674.png',268112,'article11.png','image/png',1,'local','2025-05-09 19:25:44'),(39,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746790045092304.png',1570218,'article12.png','image/png',1,'local','2025-05-09 19:27:25'),(40,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746790151793877.png',1774624,'article13.png','image/png',1,'local','2025-05-09 19:29:11'),(41,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746790235109315.png',112307,'article14.png','image/png',1,'local','2025-05-09 19:30:35'),(42,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746790570100887.png',1570218,'article12.png','image/png',1,'local','2025-05-09 19:36:10'),(43,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746790581582942.png',902232,'article16.png','image/png',1,'local','2025-05-09 19:36:21'),(44,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746790931580121.gif',1919716,'article19.gif','image/gif',1,'local','2025-05-09 19:42:11'),(45,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root1174679122214276.png',1774624,'article22.png','image/png',1,'local','2025-05-09 19:47:02'),(46,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746791277106820.png',1635267,'article21.png','image/png',1,'local','2025-05-09 19:47:57'),(47,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746791310484580.png',1738923,'article23.png','image/png',1,'local','2025-05-09 19:48:30'),(48,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746791347235888.jpg',490582,'article23.jpg','image/jpeg',1,'local','2025-05-09 19:49:07'),(49,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746791372734118.jpg',13191,'article24.jpg','image/jpeg',1,'local','2025-05-09 19:49:32'),(50,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root1174679159252133.png',104841,'article24.png','image/png',1,'local','2025-05-09 19:53:12'),(51,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746791619565601.png',10754,'article25.png','image/png',1,'local','2025-05-09 19:53:39'),(52,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746791974967125.png',1249,'article26.png','image/png',1,'local','2025-05-09 19:59:35'),(53,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746791990324337.png',1249,'article26.png','image/png',1,'local','2025-05-09 19:59:50'),(54,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746792066754468.png',936069,'article27.png','image/png',1,'local','2025-05-09 20:01:06'),(55,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746792151981623.png',77167,'article28.png','image/png',1,'local','2025-05-09 20:02:32'),(56,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746792190219806.png',166101,'article29.png','image/png',1,'local','2025-05-09 20:03:10'),(57,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746792261426971.png',160045,'article30.png','image/png',1,'local','2025-05-09 20:04:21'),(58,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746792305187159.png',892465,'article31.png','image/png',1,'local','2025-05-09 20:05:05'),(59,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746792350045504.png',892465,'article31.png','image/png',1,'local','2025-05-09 20:05:50'),(60,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746792656233299.png',1129450,'article32.png','image/png',1,'local','2025-05-09 20:10:56'),(61,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746792763203229.gif',164397,'article33.gif','image/gif',1,'local','2025-05-09 20:12:43'),(62,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746792773845672.png',1129450,'article32.png','image/png',1,'local','2025-05-09 20:12:53'),(63,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746793007703238.png',80627,'article34.png','image/png',1,'local','2025-05-09 20:16:47'),(64,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746793689316688.gif',15375,'article35.gif','image/gif',1,'local','2025-05-09 20:28:09'),(65,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root1174679513331415.png',218015,'article33.png','image/png',1,'local','2025-05-09 20:52:13'),(66,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746795188287821.png',218015,'article33.png','image/png',1,'local','2025-05-09 20:53:08'),(67,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746795198932506.jpg',734807,'article38.jpg','image/jpeg',1,'local','2025-05-09 20:53:18'),(68,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746795478217431.png',115189,'article39.png','image/png',1,'local','2025-05-09 20:57:58'),(69,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746795486606432.png',157518,'article40.png','image/png',1,'local','2025-05-09 20:58:06'),(70,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746795497873461.png',172256,'article41.png','image/png',1,'local','2025-05-09 20:58:17'),(71,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746795518335889.jpg',28172,'article36.jpg','image/jpeg',1,'local','2025-05-09 20:58:38'),(72,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746795562955214.png',172256,'article41.png','image/png',1,'local','2025-05-09 20:59:22'),(73,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746795817551839.jpg',36129,'article44.jpg','image/jpeg',1,'local','2025-05-09 21:03:37'),(74,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746795847837602.png',1129450,'article45.png','image/png',1,'local','2025-05-09 21:04:07'),(75,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746795879320964.jpg',36964,'article37.jpg','image/jpeg',1,'local','2025-05-09 21:04:39'),(76,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746796082269688.png',29653,'article46.png','image/png',1,'local','2025-05-09 21:08:02'),(77,1,'articleCover','http://127.0.0.1:8081/articleCover/root1174679638091410.jpg',30738,'article47.jpg','image/jpeg',1,'local','2025-05-09 21:13:00'),(78,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746796571764272.jpg',734333,'article45.jpg','image/jpeg',1,'local','2025-05-09 21:16:11'),(79,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746796601788591.jpg',67895,'article46.jpg','image/jpeg',1,'local','2025-05-09 21:16:41'),(80,1,'articleCover','http://127.0.0.1:8081/articleCover/root11746796669170866.jpg',89882,'article48.jpg','image/jpeg',1,'local','2025-05-09 21:17:49'),(81,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746797057618748.png',126102,'article47.png','image/png',1,'local','2025-05-09 21:24:17'),(82,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746797074834400.png',788473,'article48.png','image/png',1,'local','2025-05-09 21:24:34'),(83,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746797086462314.png',389429,'article49.png','image/png',1,'local','2025-05-09 21:24:46'),(84,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746797098942619.png',345696,'article50.png','image/png',1,'local','2025-05-09 21:24:58'),(85,1,'articlePicture','http://127.0.0.1:8081/articlePicture/root11746797110280137.png',290831,'article51.png','image/png',1,'local','2025-05-09 21:25:10'),(86,1,'articleCover','http://127.0.0.1:8081/articleCover/root1174679723256133.png',19818,'article52.png','image/png',1,'local','2025-05-09 21:27:12'),(87,1,'randomCover','http://127.0.0.1:8081/randomCover/root11746797547148106.jpg',704768,'background17.jpg','image/jpeg',1,'local','2025-05-09 21:32:27'),(88,1,'userAvatar','http://127.0.0.1:8081/userAvatar/root11746798156035760.png',16764,'touxiang.png','image/png',1,'local','2025-05-09 21:42:36'),(89,1,'love/womanCover','http://127.0.0.1:8081/love/womanCover/root11746798867860157.png',16764,'touxiang.png','image/png',1,'local','2025-05-09 21:54:27'),(90,1,'favoritesCover','http://127.0.0.1:8081/favoritesCover/root11746799469078124.jpg',239141,'touxiang1.jpg','image/jpeg',1,'local','2025-05-09 22:04:29'),(91,1,'funnyCover','http://127.0.0.1:8081/funnyCover/root11746801305712387.jpg',28727,'music.jpg','image/jpeg',1,'local','2025-05-09 22:35:05'),(92,1,'funnyCover','http://127.0.0.1:8081/funnyCover/root11746801463498333.webp',23678,'music1.webp','image/webp',1,'local','2025-05-09 22:37:43'),(93,1,'funnyUrl','http://127.0.0.1:8081/funnyUrl/root11746801643968839.mp3',481115,'music.mp3','audio/mpeg',1,'local','2025-05-09 22:40:44'),(94,1,'funnyCover','http://127.0.0.1:8081/funnyCover/root1174680173277237.jpeg',53004,'music1.jpeg','image/jpeg',1,'local','2025-05-09 22:42:12');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_path`
--

DROP TABLE IF EXISTS `resource_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_path` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(64) NOT NULL COMMENT '标题',
  `classify` varchar(32) DEFAULT NULL COMMENT '分类',
  `cover` varchar(256) DEFAULT NULL COMMENT '封面',
  `url` varchar(256) DEFAULT NULL COMMENT '链接',
  `introduction` varchar(1024) DEFAULT NULL COMMENT '简介',
  `type` varchar(32) NOT NULL COMMENT '资源类型',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用[0:否，1:是]',
  `remark` text COMMENT '备注',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='资源路径';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_path`
--

LOCK TABLES `resource_path` WRITE;
/*!40000 ALTER TABLE `resource_path` DISABLE KEYS */;
INSERT INTO `resource_path` VALUES (1,'Banner在线制作网站介绍','在线工具','http://127.0.0.1:8081/favoritesCover/root11746799469078124.jpg','https://www.bootstrapmb.com/','Banner在线制作网站介绍 在线制作banner网站 用来做公司的宣传和推广支持主控件-*小块和AOL宏字体','favorites',1,'','2025-05-09 22:05:06'),(2,'网易云音乐','网易云音乐','http://127.0.0.1:8081/funnyCover/root1174680173277237.jpeg','https://m702.music.126.net/20250509225756/e6a2eb9d297dc8a165c118a285782433/jd-musicrep-ts/f3f6/e3ab/4c6e/789d918bc3db1adf520122e83da40834.mp3?vuutv=0sqewEAvxYLsDudoTVygIq+5mvsPbC9v0qtIj5WIQVzIBZhRXOl05LH1J7/owy3nM/rdQQxlKaIN8EOp7+UemvUty5ArhTq4N0kANif8FZQ=','','funny',1,'','2025-05-09 22:35:57'),(3,'QQ音乐','QQ音乐','http://127.0.0.1:8081/funnyCover/root11746801463498333.webp','http://127.0.0.1:8081/funnyUrl/root11746801643968839.mp3','','funny',1,'','2025-05-09 22:40:48');
/*!40000 ALTER TABLE `resource_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort`
--

DROP TABLE IF EXISTS `sort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sort` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sort_name` varchar(32) NOT NULL COMMENT '分类名称',
  `sort_description` varchar(256) NOT NULL COMMENT '分类描述',
  `sort_type` tinyint NOT NULL DEFAULT '1' COMMENT '分类类型[0:导航栏分类，1:普通分类]',
  `priority` int DEFAULT NULL COMMENT '导航栏分类优先级：数字小的在前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort`
--

LOCK TABLES `sort` WRITE;
/*!40000 ALTER TABLE `sort` DISABLE KEYS */;
INSERT INTO `sort` VALUES (1,'微语','微语',0,1),(2,'网站','网站',0,2),(3,'前端','前端',0,3),(4,'博客美化','博客美化',0,4),(5,'音乐','音乐',0,5),(6,'后端','后端',0,6),(7,'docker部署','docker部署',0,7);
/*!40000 ALTER TABLE `sort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tree_hole`
--

DROP TABLE IF EXISTS `tree_hole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tree_hole` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `avatar` varchar(256) DEFAULT NULL COMMENT '头像',
  `message` varchar(64) NOT NULL COMMENT '留言',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='树洞';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tree_hole`
--

LOCK TABLES `tree_hole` WRITE;
/*!40000 ALTER TABLE `tree_hole` DISABLE KEYS */;
INSERT INTO `tree_hole` VALUES (1,'http://127.0.0.1:8081/randomAvatar/Sara116383640738092.jpg','摩西摩西','2025-05-09 15:21:48'),(2,'http://127.0.0.1:8081/randomAvatar/Sara116383642997556.jpg','牛啊','2025-05-09 15:19:48'),(3,'http://127.0.0.1:8081/randomAvatar/Sara116383640738096.jpg','The boss\'s writing is so beautiful.','2025-05-09 15:17:48'),(4,'http://127.0.0.1:8081/randomAvatar/Sara116383641089654.jpg','2025.04.10','2025-05-09 15:15:48'),(5,'http://127.0.0.1:8081/randomAvatar/Sara116383641476173.jpg','不错啊','2025-05-09 15:13:48'),(6,'http://127.0.0.1:8081/randomAvatar/Sara116383641712039.jpg','我爱了','2025-05-09 15:11:48'),(7,'http://127.0.0.1:8081/randomAvatar/Sara116383641089668.jpg','好帅！','2025-05-09 15:09:48'),(8,'http://127.0.0.1:8081/randomAvatar/Sara116383641089654.jpg','666666这个前端写的很好','2025-05-09 15:07:48'),(9,'http://127.0.0.1:8081/randomAvatar/Sara116383640738092.jpg','真漂亮','2025-05-09 15:05:48'),(10,'http://127.0.0.1:8081/randomAvatar/Sara116383641712039.jpg','老漂亮了','2025-05-09 15:03:48'),(11,'http://127.0.0.1:8081/randomAvatar/Sara116383640738099.jpg','牛逼','2025-05-09 15:01:48'),(12,'http://127.0.0.1:8081/randomAvatar/Sara116383641476173.jpg','路过点赞','2025-05-09 14:59:48'),(13,'http://127.0.0.1:8081/randomAvatar/Sara116383641712039.jpg','做的太好了啊！','2025-05-09 14:57:48'),(14,'http://127.0.0.1:8081/randomAvatar/Sara116383641712031.jpg','有点东西','2025-05-09 14:55:48'),(15,'http://127.0.0.1:8081/randomAvatar/Sara116383640738099.jpg','牛逼','2025-05-09 14:53:48'),(16,'http://127.0.0.1:8081/randomAvatar/Sara116383641476175.jpg','插眼','2025-05-09 14:51:48'),(17,'http://127.0.0.1:8081/randomAvatar/Sara116383642997568.jpg','2025.04.14','2025-05-09 14:49:48'),(18,'http://127.0.0.1:8081/randomAvatar/Sara116383641712039.jpg','我爱她','2025-05-09 14:47:48'),(19,'http://127.0.0.1:8081/randomAvatar/Sara116383641089654.jpg','biubiubiubiu','2025-05-09 14:45:48'),(20,'http://127.0.0.1:8081/randomAvatar/Sara116383641089654.jpg','鼓励一个','2025-05-09 14:43:48'),(21,'http://127.0.0.1:8081/randomAvatar/Sara116383641089654.jpg','niuniuniu','2025-05-09 14:41:48'),(22,'http://127.0.0.1:8081/randomAvatar/Sara116383642997556.jpg','niu','2025-05-09 14:39:48'),(23,'http://127.0.0.1:8081/randomAvatar/Sara116383641712026.jpg','强','2025-05-09 14:37:48'),(24,'http://127.0.0.1:8081/randomAvatar/Sara116383641089667.jpg','hello','2025-05-09 14:35:48'),(25,'http://127.0.0.1:8081/randomAvatar/Sara116383641476173.jpg','嗨','2025-05-09 14:33:48'),(26,'http://127.0.0.1:8081/randomAvatar/Sara116383641476175.jpg','好看~~','2025-05-09 14:31:48'),(27,'http://127.0.0.1:8081/randomAvatar/Sara116383640738091.jpg','牛逼','2025-05-09 14:29:48'),(28,'http://127.0.0.1:8081/randomAvatar/Sara116383641476175.jpg','♥♥♥','2025-05-09 14:27:48'),(29,'http://127.0.0.1:8081/randomAvatar/Sara116383641089654.jpg','不错呀','2025-05-09 14:25:48'),(30,'http://127.0.0.1:8081/randomAvatar/Sara116383640738092.jpg','大佬','2025-05-09 14:23:48'),(31,'http://127.0.0.1:8081/randomAvatar/Sara116383642997561.jpg','你好啊','2025-05-09 14:21:48'),(32,'http://127.0.0.1:8081/randomAvatar/Sara116383641476179.jpg','牛逼这个页面','2025-05-09 14:19:48'),(33,'http://127.0.0.1:8081/randomAvatar/Sara116383641712031.jpg','这个太棒了把，希望能持续迭代升级。2022-12-31','2025-05-09 14:17:48'),(34,'http://127.0.0.1:8081/randomAvatar/Sara116383640738096.jpg','新年快乐呀','2025-05-09 14:15:48'),(35,'http://127.0.0.1:8081/randomAvatar/Sara116383641712031.jpg','用心了','2025-05-09 14:13:48'),(36,'http://127.0.0.1:8081/randomAvatar/Sara116383641476167.jpg','太强了','2025-05-09 14:11:48'),(37,'http://127.0.0.1:8081/randomAvatar/Sara116383640738096.jpg','色调','2025-05-09 14:09:48'),(38,'http://127.0.0.1:8081/randomAvatar/Sara116383641712026.jpg','写的真的很好！','2025-05-09 14:07:48'),(39,'http://127.0.0.1:8081/randomAvatar/Sara116383641712026.jpg','牛逼','2025-05-09 14:05:48'),(40,'http://127.0.0.1:8081/randomAvatar/Sara116383641089667.jpg','+666','2025-05-09 14:03:48'),(41,'http://127.0.0.1:8081/randomAvatar/Sara116383642997556.jpg','好家伙','2025-05-09 14:01:48'),(42,NULL,'哈哈哈哈哈','2025-05-09 15:44:58'),(43,NULL,'终于上线啦','2025-05-09 15:45:22'),(44,NULL,'哈哈哈哈哈哈','2025-05-09 15:45:36');
/*!40000 ALTER TABLE `tree_hole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(32) DEFAULT NULL COMMENT '用户名',
  `password` varchar(128) DEFAULT NULL COMMENT '密码',
  `phone_number` varchar(16) DEFAULT NULL COMMENT '手机号',
  `email` varchar(32) DEFAULT NULL COMMENT '用户邮箱',
  `user_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用[0:否，1:是]',
  `gender` tinyint DEFAULT NULL COMMENT '性别[1:男，2:女，0:保密]',
  `open_id` varchar(128) DEFAULT NULL COMMENT 'openId',
  `avatar` varchar(256) DEFAULT NULL COMMENT '头像',
  `admire` varchar(32) DEFAULT NULL COMMENT '赞赏',
  `subscribe` text COMMENT '订阅',
  `introduction` varchar(4096) DEFAULT NULL COMMENT '简介',
  `user_type` tinyint NOT NULL DEFAULT '2' COMMENT '用户类型[0:admin，1:管理员，2:普通用户]',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最终修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '最终修改人',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用[0:未删除，1:已删除]',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'root','e10adc3949ba59abbe56e057f20f883e','','',1,1,'','http://127.0.0.1:8081/userAvatar/root11746798156035760.png','','','',0,'2025-05-09 13:58:44','2025-05-09 21:42:36',NULL,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_info`
--

DROP TABLE IF EXISTS `web_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `web_name` varchar(16) NOT NULL COMMENT '网站名称',
  `web_title` varchar(512) NOT NULL COMMENT '网站信息',
  `notices` varchar(512) DEFAULT NULL COMMENT '公告',
  `footer` varchar(256) NOT NULL COMMENT '页脚',
  `background_image` varchar(256) DEFAULT NULL COMMENT '背景',
  `avatar` varchar(256) NOT NULL COMMENT '头像',
  `random_avatar` text COMMENT '随机头像',
  `random_name` varchar(4096) DEFAULT NULL COMMENT '随机名称',
  `random_cover` text COMMENT '随机封面',
  `waifu_json` text COMMENT '看板娘消息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用[0:否，1:是]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='网站信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_info`
--

LOCK TABLES `web_info` WRITE;
/*!40000 ALTER TABLE `web_info` DISABLE KEYS */;
INSERT INTO `web_info` VALUES (1,'我是云朵呀～','欢迎来到云朵屋～哈哈哈','[\"终于上线啦～～～\"]','但愿你永远平安喜乐，有朋友，有兄弟，有忠诚，有人爱，再也不会孤单。','http://127.0.0.1:8081/webBackgroundImage/root11746777354772788.jpg','http://127.0.0.1:8081/webAvatar/root11746777369175502.webp','[\"http://127.0.0.1:8081/randomAvatar/root11746777628695243.webp\",\"http://127.0.0.1:8081/randomAvatar/root1174677762869519.jpg\",\"http://127.0.0.1:8081/randomAvatar/root11746777628694256.JPG\"]','[]','[\"http://127.0.0.1:8081/randomCover/root1174677770206698.jpg\",\"http://127.0.0.1:8081/randomCover/root1174677770206685.jpg\",\"http://127.0.0.1:8081/randomCover/root11746777702066215.jpg\",\"http://127.0.0.1:8081/randomCover/root11746777818430993.jpg\",\"http://127.0.0.1:8081/randomCover/root11746778640273121.jpg\",\"http://127.0.0.1:8081/randomCover/root11746797547148106.jpg\"]','{\n  \"mouseover\": [\n    {\n      \"selector\": \"#live2d\",\n      \"text\": [\n        \"我是一个特别固执的人，我从来不会在意别人跟我说什么，让我去做，让我去怎么做，我不管。如果，你也可以像我一样，那我觉得，这件事情，太酷辣!!!\"\n      ]\n    },\n    {\n      \"selector\": \"#waifu-tool .fa-street-view\",\n      \"text\": [\n        \"喜欢换装 PLAY 吗？\"\n      ]\n    },\n    {\n      \"selector\": \"#waifu-tool .fa-times\",\n      \"text\": [\n        \"到了要说再见的时候了吗？\"\n      ]\n    }\n  ],\n  \"click\": [\n    {\n      \"selector\": \"#live2d\",\n      \"text\": [\n        \"你看到我的小熊了吗？\"\n      ]\n    }\n  ],\n  \"seasons\": [\n    {\n      \"date\": \"01/01\",\n      \"text\": \"<span>元旦</span>了呢，新的一年又开始了，今年是{year}年～\"\n    },\n    {\n      \"date\": \"02/14\",\n      \"text\": \"又是一年<span>情人节</span>，{year}年找到对象了嘛～\"\n    },\n    {\n      \"date\": \"03/08\",\n      \"text\": \"今天是<span>国际妇女节</span>！\"\n    },\n    {\n      \"date\": \"03/12\",\n      \"text\": \"今天是<span>植树节</span>，要保护环境呀！\"\n    },\n    {\n      \"date\": \"04/01\",\n      \"text\": \"悄悄告诉你一个秘密～<span>今天是愚人节，不要被骗了哦～</span>\"\n    },\n    {\n      \"date\": \"05/01\",\n      \"text\": \"今天是<span>五一劳动节</span>，计划好假期去哪里了吗～\"\n    },\n    {\n      \"date\": \"06/01\",\n      \"text\": \"<span>儿童节</span>了呢，快活的时光总是短暂，要是永远长不大该多好啊…\"\n    },\n    {\n      \"date\": \"09/03\",\n      \"text\": \"<span>中国人民抗日战争胜利纪念日</span>，铭记历史、缅怀先烈、珍爱和平、开创未来。\"\n    },\n    {\n      \"date\": \"09/10\",\n      \"text\": \"<span>教师节</span>，在学校要给老师问声好呀～\"\n    },\n    {\n      \"date\": \"10/01\",\n      \"text\": \"<span>国庆节</span>到了，为祖国母亲庆生！\"\n    },\n    {\n      \"date\": \"11/05-11/12\",\n      \"text\": \"今年的<span>双十一</span>是和谁一起过的呢～\"\n    },\n    {\n      \"date\": \"12/20-12/31\",\n      \"text\": \"这几天是<span>圣诞节</span>，主人肯定又去剁手买买买了～\"\n    }\n  ]\n}',1);
/*!40000 ALTER TABLE `web_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wei_yan`
--

DROP TABLE IF EXISTS `wei_yan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wei_yan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int NOT NULL COMMENT '用户ID',
  `like_count` int NOT NULL DEFAULT '0' COMMENT '点赞数',
  `content` varchar(1024) NOT NULL COMMENT '内容',
  `type` varchar(32) NOT NULL COMMENT '类型',
  `source` int DEFAULT NULL COMMENT '来源标识',
  `is_public` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否公开[0:仅自己可见，1:所有人可见]',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='微言表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wei_yan`
--

LOCK TABLES `wei_yan` WRITE;
/*!40000 ALTER TABLE `wei_yan` DISABLE KEYS */;
INSERT INTO `wei_yan` VALUES (1,1,0,'欢迎进入聊天室呀哈哈哈～','friend',NULL,1,'2025-05-09 22:54:52'),(2,1,0,'快来聊聊天吧～～～～','friend',NULL,1,'2025-05-09 23:54:40');
/*!40000 ALTER TABLE `wei_yan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-10  1:42:27
