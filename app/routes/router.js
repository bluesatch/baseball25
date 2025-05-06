const express = require('express')
const router = express.Router()
const PORT = process.env.PORT || 3005

router.get('/api', (req, res)=> {
    res.json({
        "Players": `http://localhost:${PORT}/api/player`,
        "Teams": `http://localhost:${PORT}/api/team`,
        "Positions": `http://localhost:${PORT}/api/position`,
        "Users": `http://localhost:${PORT}/api/user`,
    })
})


const endpoints = [
    'player',
    'position',
    'team',
    'user'
]

endpoints.forEach(endpoint => {
    router.use(`/api/${endpoint}`, require(`./api/${endpoint}Routes`))
})



router.all('/{*any}', (req, res)=> {
    res.send('<h1>This page does not exist</h1>')
})

module.exports = router