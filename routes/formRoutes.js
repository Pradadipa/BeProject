const express = require('express')
const formRoute = express.Router();
const formController = require('../controllers/formController')



formRoute.get('/', formController.getAllForm)
formRoute.post('/index', formController.createForm)


module.exports = { formRoute }