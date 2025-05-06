const express = require('express')
const app = express()
const helmet = require('helmet')
const cors = require('cors')
const router = require('./routes/router')
const PORT = process.env.PORT || 3005

app.use(helmet.contentSecurityPolicy({
    useDefaults: true,
    crossOriginResourcePolicy: false,
    crossOriginEmbedderPolicy: false,
    directives: {
        "img-src": ["'self'", "https: data"],
        "scriptSrc": ["'self'", "cdn.jsdelivr.net"]
    }
}))

app.use(cors())
    .use(express.json())
    .use(express.urlencoded({ extended: true }))

app.use('/', router)

app.listen(PORT, ()=> console.log(`Port ${PORT} is running`))
