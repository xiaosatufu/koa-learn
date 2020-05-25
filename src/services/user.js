/**
 * 数据库查询
 */

const { User } = require('../db/model/index')

//查询数据库操作

async function getUserInfo(userName, password) {
    // 查询条件
    const whereOpt = {
        userName
    }

    if (password) {
        Object.assign(whereOpt, { password })
    }
    //查询
    const result = await User.findOne({
        attributes: ['id', 'userName', 'nickName', 'picture', 'city'],
        where: whereOpt
    })

    if (result == null) {
        return result
    }

    return result.dataValues
}


async function createUser({ userName, password, gender = 3, nickName }) {
    const result = await User.create({
        userName,
        password,
        gender,
        nickName: nickName ? nickName : userName
    })
    const data = result.dataValues
    return data
}





module.exports = {
    getUserInfo,
    createUser
}


