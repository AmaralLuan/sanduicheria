const database = require('../config/database')
const jwt = require('jsonwebtoken');

const UsersController = {
  createUser : (req, res) => {
    const login = req.body.login;
    const password = req.body.password;

    database.query(
      'INSERT INTO users (login, password) VALUES (?,?)',
      [login, password],
      (err, response) => {
        if (err) {
          return res.send({message: 'Ocorreu uma falha ao registrar o usuario'})
        }else {
          return res.send(response);
        }
      }
    )},

  getUsers : (req, res) => {
    return res.send([
      {
        "id": 1,
        "name": "Luan"
      },
      {
        "id": 2,
        "name": "Nathan"
      }
    ])
  },

  usersLogin: (req, res) => {
    const login = req.body.login;
    const password = req.body.password;

    const user = {
      login: login
    }
    database.query(
      "SELECT * FROM users WHERE login = ? AND password = ?",
      [login, password],
      (err, result) => {
        if (err) {
          console.log(err)
        }

        if (result.length > 0) {
          console.log(result)
          jwt.sign({user}, 'secret', (error, token) => {
            return res.json({token})
          })
        } else {
          return res.send({ message: 'Wrong login/password combination' })
        }
      })
  }
}

module.exports = UsersController;