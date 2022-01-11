const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send(
    ' <h1 style="color: red; text-align: center">Hi there From Docker Conatiner</h1>'
  );
});

app.listen(8080, () => {
  console.log('Listening on port 8080');
});
