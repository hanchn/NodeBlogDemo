/**
 * 博客核心功能预览（文章列表、详情、发布、编辑、删除、搜索、评论）
 * 
 * 这是0103章节的示例代码
 */

// 引入依赖
const express = require('express');
const path = require('path');

// 创建应用实例
const app = express();

// 设置视图引擎
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// 示例路由
app.get('/', (req, res) => {
  res.render('index', { title: '博客核心功能预览（文章列表、详情、发布、编辑、删除、搜索、评论） 示例' });
});

// 启动服务器
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`服务器运行在 http://localhost:${PORT}`);
});
