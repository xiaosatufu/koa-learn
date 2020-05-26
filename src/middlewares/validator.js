const { ErrorModel } = require('../model/ResModel')
const { jsonSchemaFileInfo } = require('../model/ErrorInfo')

function genValidator(validateFn) {
    async function validator(ctx, next) {
        const data = crx.request.body
        const error = validateFn(data)
        if (error) {
            ctx.body = new ErrorModel(jsonSchemaFileInfo)
            return
        }
        await next()
    }
    return validator
}


module.exports = {
    genValidator
}

