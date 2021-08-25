const verifyToken = (req, res, next) => {
  const bearerHeader = req.headers['authorization'];

  if (typeof bearerHeader !== 'undefined') {
    const bearer = bearerHeader.split(' ');

    // get token from bearerHeader

    const token = bearer[1]

    req.token = token;

    // next
    next();

  } else {
    // Forbidden
    res.sendStatus(403);
  }
}

module.exports = verifyToken;