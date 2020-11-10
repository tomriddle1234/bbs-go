-- need run with root access of course set user priviledge too
-- CREATE DATABASE wencang_bbsgo_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE wencang_bbsgo_db;
-- 初始化用户表
CREATE TABLE IF NOT EXISTS `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `roles` text COLLATE utf8mb4_unicode_ci,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 初始化用户数据（用户名：admin、密码：123456）
INSERT INTO `t_user`(`id`, `username`, `nickname`, `avatar`, `email`, `password`, `status`, `create_time`, `update_time`, `roles`, `type`, `description`) VALUES (1, 'admin', '管理员', '', '', '$2a$10$ofA39bAFMpYpIX/Xiz7jtOMH9JnPvYfPRlzHXqAtLPFpbE/cLdjmS', 0, 1555419028975, 1555419028975, 'owner', 0, '轻轻地我走了，正如我轻轻的来。');

-- 初始化系统配置表
CREATE TABLE IF NOT EXISTS `t_sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` bigint(20) NOT NULL,
  `update_time` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 初始化系统配置数据
insert into t_sys_config(`key`, `value`, `name`, `description`, `create_time`, `update_time`) values
    ('siteTitle', 'bbs-go', '站点标题', '站点标题', 1555419028975, 1555419028975),
    ('siteDescription', 'bbs-go，基于Go语言的开源社区系统', '站点描述', '站点描述', 1555419028975, 1555419028975),
    ('siteKeywords', 'bbs-go', '站点关键字', '站点关键字', 1555419028975, 1555419028975),
    ('siteNavs', '[{\"title\":\"首页\",\"url\":\"/\"},{\"title\":\"话题\",\"url\":\"/topics\"},{\"title\":\"文章\",\"url\":\"/articles\"}]', '站点导航', '站点导航', 1555419028975, 1555419028975);