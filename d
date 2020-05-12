warning: LF will be replaced by CRLF in src/routes/index.js.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/views/index.ejs.
The file will have its original line endings in your working directory
[1mdiff --git a/src/routes/index.js b/src/routes/index.js[m
[1mindex b43b810..19fe29f 100644[m
[1m--- a/src/routes/index.js[m
[1m+++ b/src/routes/index.js[m
[36m@@ -2,7 +2,22 @@[m [mconst router = require('koa-router')()[m
 [m
 router.get('/', async (ctx, next) => {[m
   await ctx.render('index', {[m
[31m-    title: 'Hello Koa 2!'[m
[32m+[m[32m    title: 'Hello Koa 2!',[m
[32m+[m[32m    isMe: true,[m
[32m+[m[32m    blogList: [[m
[32m+[m[32m      {[m
[32m+[m[32m        id: 1,[m
[32m+[m[32m        title: '111'[m
[32m+[m[32m      },[m
[32m+[m[32m      {[m
[32m+[m[32m        id: 2,[m
[32m+[m[32m        title: 'ccc'[m
[32m+[m[32m      },[m
[32m+[m[32m      {[m
[32m+[m[32m        id: 3,[m
[32m+[m[32m        title: 'ddd'[m
[32m+[m[32m      }[m
[32m+[m[32m    ][m
   })[m
 })[m
 [m
[36m@@ -17,18 +32,18 @@[m [mrouter.get('/json', async (ctx, next) => {[m
 })[m
 [m
 [m
[31m-router.get('/profile/:userName',async (ctx,next) =>{[m
[31m-  const {userName} = ctx.params[m
[32m+[m[32mrouter.get('/profile/:userName', async (ctx, next) => {[m
[32m+[m[32m  const { userName } = ctx.params[m
   ctx.body = {[m
[31m-    title:"this is profile page",[m
[32m+[m[32m    title: "this is profile page",[m
     userName[m
   }[m
 })[m
 [m
[31m-router.get('/loadMore/:userName/:pageIndex',(ctx,next)=>{[m
[31m-  const {userName,pageIndex} = ctx.params[m
[32m+[m[32mrouter.get('/loadMore/:userName/:pageIndex', (ctx, next) => {[m
[32m+[m[32m  const { userName, pageIndex } = ctx.params[m
   ctx.body = {[m
[31m-    title:"this is loadMore API",[m
[32m+[m[32m    title: "this is loadMore API",[m
     userName,[m
     pageIndex[m
   }[m
[1mdiff --git a/src/views/index.ejs b/src/views/index.ejs[m
[1mindex cc50d13..d123e09 100644[m
[1m--- a/src/views/index.ejs[m
[1m+++ b/src/views/index.ejs[m
[36m@@ -1,11 +1,25 @@[m
 <!DOCTYPE html>[m
 <html>[m
[31m-  <head>[m
[31m-    <title><%= title %></title>[m
[31m-    <link rel='stylesheet' href='/stylesheets/style.css' />[m
[31m-  </head>[m
[31m-  <body>[m
[31m-    <h1><%= title %></h1>[m
[31m-    <p>EJS Welcome to <%= title %></p>[m
[31m-  </body>[m
[31m-</html>[m
[32m+[m
[32m+[m[32m<head>[m
[32m+[m[32m  <title><%= title %></title>[m
[32m+[m[32m  <link rel='stylesheet' href='/stylesheets/style.css' />[m
[32m+[m[32m</head>[m
[32m+[m
[32m+[m[32m<body>[m
[32m+[m[32m  <h1><%= title %></h1>[m
[32m+[m[32m  <p>EJS Welcome to <%= title %></p>[m
[32m+[m[32m  <%- include('widgets/user-info',{[m
[32m+[m[32m    isMe[m
[32m+[m[32m  }) %>[m
[32m+[m
[32m+[m[32m  <hr>[m
[32m+[m
[32m+[m[32m  <%- include('widgets/blog-list',{[m
[32m+[m[32m    blogList[m
[32m+[m[32m  }) %>[m
[32m+[m
[32m+[m
[32m+[m[32m</body>[m
[32m+[m
[32m+[m[32m</html>[m
\ No newline at end of file[m
