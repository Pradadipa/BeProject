const express = require('express')
const productRoute = express.Router();
const productController = require('../controllers/productsController')

productRoute.get('/index', productController.getAllProduct)
productRoute.get('/views/products', productController.getAllProduct)
productRoute.get('/views/detail-products/:byId', productController.getProductById)





module.exports = { productRoute }