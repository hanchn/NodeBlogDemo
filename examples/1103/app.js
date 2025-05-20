/**
 * 丰富博客功能（图片上传、点赞、标签云等）
 * 
 * 这是1103章节的示例代码
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
  res.render('index', { title: '丰富博客功能（图片上传、点赞、标签云等） 示例' });
});

// 启动服务器
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`服务器运行在 http://localhost:${PORT}`);
});
