const express = require('express');
const router = express.Router();

const verifyToken = require('../controllers/common');
const productController = require('../controllers/ProductController');

router.post('/createProduct', verifyToken, productController.createProduct);
router.get('/getProducts', verifyToken, productController.getProducts);
router.get('/getProduct/:id', verifyToken, productController.getProduct);
router.delete('/deleteProduct/:id', verifyToken, productController.deleteProduct);

module.exports = router;