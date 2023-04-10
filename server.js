// server.js
const express = require('express');
const req = require('express/lib/request');
const res = require('express/lib/response');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send('Hello, DevOps!');
});

app.listen(port, () => {
    console.log('Express.js app listening at http://localhost:${port}')
});
