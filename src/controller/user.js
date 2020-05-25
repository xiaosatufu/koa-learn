/**
 * 数据层与业务层对接
 */

const { getUserInfo, createUser } = require('../services/user')

const { SuccessModel, ErrorModel } = require('../model/ResModel')

const {
    registerUserNameNotExistInfo,
    // registerUserNameExistInfo,
    // registerFailInfo,
    // loginFailInfo,
    // deleteUserFailInfo,
    // changeInfoFailInfo,
    // changePasswordFailInfo
} = require('../model/ErrorInfo')


async function isExist(userName) {
    const userInfo = await getUserInfo(userName)
    if (userInfo) {
        return new SuccessModel(userInfo)
    } else {
        return new ErrorModel(registerUserNameNotExistInfo)
    }
}

async function register({ userName, password, gender }) {
    const userInfo = await getUserInfo(userName)
    if (userInfo) {
        return new ErrorModel(registerUserNameExistInfo)
    }
    try {
        await createUser({
            userName,
            password,
            gender
        })
        return new SuccessModel()
    } catch (ex) {
        console.log(ex.message, ex.stack)
        return new ErrorModel(registerFailInfo)
    }
}




module.exports = {
    isExist,
    register
}
