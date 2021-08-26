const database = require('../config/database')

const productController = {
  createProduct : (req, res) => {
    const productName = req.body.productName;
    const productDescription = req.body.productDescription;
    const productPrice = req.body.productPrice;
    const productCategory = req.body.productCategory;

    database.query(
      'INSERT INTO products (product_name, product_description, product_price, product_category) VALUES (?,?,?,?)',
      [productName, productDescription, productPrice, productCategory],
      (err, response) => {
        if (err) {
          return res.send({message: 'Ocorreu uma falha ao registrar o produto'})
        } else {
          console.log(response)
          return res.send(response);
        }
      }
    )

  },

  getProducts: (req, res) => {
    database.query(
      'SELECT * FROM products',
        (err, result) => {
          if(err){
            return console.log(err)
          } else {
            console.log(result)
            return res.send(result)
          }
        }
      )
  },

  deleteProduct: (req, res) => {
    const id = req.params.id;

    database.query(
      'DELETE FROM products WHERE id = ?',
      id,
      (err, result) => {
        if (err) {
          console.log(err)
        }
      }
    )
  }
}

module.exports = productController;