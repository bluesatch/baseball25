const daoCommon = require('./common/daoCommon')


const playerDao = {
    ...daoCommon,
    ...require('./api/playerDao')
}

const teamDao = {
    ...daoCommon,
    ...require('./api/teamDao')
}

const positionDao = {
    ...daoCommon,
    ...require('./api/positionDao')
}

const userDao = {
    ...daoCommon,
    ...require('./api/userDao')
}

module.exports = {
    playerDao,
    positionDao,
    teamDao,
    userDao
}