var express = require('express')
const bodyParser = require('body-parser')
var app = express()
const port = 3000

app.use(bodyParser.json());

app.use(bodyParser.urlencoded({
    extended: true
}));

app.get('/*', function (req, res) {
    res.send('{"status":"OK"}')
})

app.post('/*', function (req, res) {
    res.send('{"status":"OK"}')
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))