# Node.js + EJS + Mock 数据开发博客系统 实战教程大纲

## 1. 项目介绍与准备

* [项目简介与目标](./examples/0101/README.md)
* [技术栈说明（Node.js、Express、EJS、Mock 数据、Nodemon等）](./examples/0102/README.md)
* [博客核心功能预览（文章列表、详情、发布、编辑、删除、搜索、评论）](./examples/0103/README.md)
* [项目目录结构设计与规范](./examples/0104/README.md)
* [开发环境准备（Node.js、npm、VSCode、Git）](./examples/0105/README.md)

## 2. Node.js & Express 基础入门

* [什么是 Node.js 和 Express？](./examples/0201/README.md)
* [Express 项目初始化（`express-generator` or 手动）](./examples/0202/README.md)
* [路由、控制器与中间件讲解](./examples/0203/README.md)
* [本地开发与自动重启（Nodemon）](./examples/0204/README.md)

## 3. EJS 模板引擎实战

* [EJS 基础语法与常见用法](./examples/0301/README.md)
* [页面布局与模板继承（partials/header、footer）](./examples/0302/README.md)
* [静态资源管理（CSS/JS/图片）](./examples/0303/README.md)
* [数据渲染与模板交互](./examples/0304/README.md)

## 4. Mock 数据驱动开发

* [什么是 Mock 数据？为什么要用？](./examples/0401/README.md)
* [常用 Mock 工具介绍（Mock.js/Faker.js/自定义 JSON 文件）](./examples/0402/README.md)
* [集成 mock 数据（前后端分离/后端 mock）](./examples/0403/README.md)
* [编写博客初始 mock 数据结构](./examples/0404/README.md)
* [列表页/详情页/用户等 mock 场景](./examples/0405/README.md)

## 5. 博客核心功能开发

### 5.1 文章模块

* [文章列表（分页、筛选、排序、搜索）](./examples/0501/README.md)
* [文章详情](./examples/0502/README.md)
* [文章新增/编辑/删除（富文本 or Markdown 简化版）](./examples/0503/README.md)
* [文章草稿和发布状态](./examples/0504/README.md)
* [文章标签与分类](./examples/0505/README.md)

### 5.2 评论模块

* [评论数据结构](./examples/0506/README.md)
* [文章下评论的增、删、查](./examples/0507/README.md)
* [评论时间、昵称等展示](./examples/0508/README.md)
* [评论数据 mock](./examples/0509/README.md)

### 5.3 用户与权限（简化实现）

* [用户登录/登出 mock（session/cookie 简单模拟）](./examples/0510/README.md)
* [用户身份区分（博主 vs 访客，权限控制）](./examples/0511/README.md)
* [管理后台入口（隐藏式或简单路由）](./examples/0512/README.md)

## 6. 接口与数据管理

* [路由与 RESTful API 设计规范](./examples/0601/README.md)
* [Mock 数据的 CRUD 操作实现](./examples/0602/README.md)
* [前端（EJS 模板）与后端（API）的数据交互](./examples/0603/README.md)
* [错误处理与统一返回结构](./examples/0604/README.md)

## 7. 前端页面设计与用户体验

* [首页（文章推荐、最新发布、标签导航）](./examples/0701/README.md)
* [文章详情页（内容、评论、相关推荐）](./examples/0702/README.md)
* [发布/编辑页（表单验证、提示）](./examples/0703/README.md)
* [简易后台管理页（文章和评论管理）](./examples/0704/README.md)

## 8. 工程化与优化

* [代码分层与模块化（controller/service/mock/routes）](./examples/0801/README.md)
* [日志与异常处理](./examples/0802/README.md)
* [配置管理（开发/生产环境）](./examples/0803/README.md)
* [静态资源优化](./examples/0804/README.md)
* [项目结构优化与自动化脚本](./examples/0805/README.md)

## 9. 测试与调试

* [接口测试（Postman/REST Client）](./examples/0901/README.md)
* [Mock 数据测试](./examples/0902/README.md)
* [页面功能手动测试与常见 Bug 排查](./examples/0903/README.md)
* [常见调试技巧（断点、日志）](./examples/0904/README.md)

## 10. 部署上线与维护

* [本地部署流程](./examples/1001/README.md)
* [简易云服务器部署（如阿里云、腾讯云、Vercel、Railway）](./examples/1002/README.md)
* [环境变量与配置](./examples/1003/README.md)
* [简易安全防护（Helmet、XSS 预防）](./examples/1004/README.md)

## 11. 项目拓展与思考

* [如何替换为真实数据库（如 MongoDB、MySQL）](./examples/1101/README.md)
* [前后端分离的改造思路](./examples/1102/README.md)
* [丰富博客功能（图片上传、点赞、标签云等）](./examples/1103/README.md)
* [常见面试问题与实战收获总结](./examples/1104/README.md)

