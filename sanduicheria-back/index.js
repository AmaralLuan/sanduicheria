const express = require('express')
const cors = require('cors')


const routes = express();
routes.use(cors());
routes.use(express.json());
routes.use(express.Router());

routes.listen(5000, () => {
  console.log('listening on port 5000')
})

/*   ROUTES  */

routes.get('/', (req, res) => {
  return res.json({message: 'public route'});
})

/* ----- USER ROUTES ----- */
const users = require('./routes/Users')

routes.use('/users', users)



/* ----- PRODUCT ROUTES ----- */

const products = require('./routes/Products');

routes.use('/products', products)


module.exports = routes;