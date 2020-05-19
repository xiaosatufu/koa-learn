#KOA2 WEIBO PROJECT
项目安装
1. 安装koa-generator
```
$ npm install -g koa-generator
```
2.初始化项目
```
koa2 my-project-name
koa2 my-project-name -e (-e表示使用ejs模板)
```
3.安装依赖 运行项目
```
cd my-project-name
npm install
npm start or npm run dev
```

安装cross-env
- cross-env 运行跨平台设置和使用环境变量的脚本
```
npm install --save-dev cross-env
```
设置环境变量
```
package.json

"dev": "cross-env NODE_ENV=dev ./node_modules/.bin/nodemon bin/www",
"prd": "cross-env NODE_ENV=production pm2 start bin/www",
```

git commit

feat：新功能（feature）

fix：修补bug

docs：文档（documentation）

style： 格式（不影响代码运行的变动）

refactor：重构（即不是新增功能，也不是修改bug的代码变动）

test：增加测试

chore：构建过程或辅助工具的变动


#mysql

- 插入
```
INSERT INTO users (username,`password`,nickname) VALUES ('zhangsan','123','2222')
```
- 求总条数
```
select count(id) as `count` from blogs
```
- 分页
```
select * from blogs ORDER BY id DESC LIMIT 2 OFFSET 2
```
- 联表查询
```
SELECT * FROM blogs INNER JOIN users ON users.id = blogs.userid

SELECT blogs.*,users.username,users.nickname FROM blogs INNER JOIN users ON users.id = blogs.userid 
WHERE users.username = 'zhangsan';
```


