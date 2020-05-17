const Sequelize = require('sequelize')
const { MYSQL_CONF } = require('../conf/db')
const { isProd, isTest } = require('../utils/env')

const { host, user, password, database } = MYSQL_CONF


const conf = {
    host,
    dialect: 'mysql'
}

if (isTest) {
    conf.logging = () => { }
}

if (isProd) {

    conf.pool = {
        max: 5,
        min: 0,
        idle: 10000 //如果一个连接池10s之内没有被使用，则释放
    }
}
const seq = new Sequelize(database, user, password, conf)

//测试链接

// seq.authenticate().then(() => {
//     console.log('ok')
// }).catch((err) => {
//     console.log(err)
// })


module.exports = seq