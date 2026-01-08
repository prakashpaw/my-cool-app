
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('<h1>DevOps Pipeline Status: <span style="color: green;">Success!</span></h1>');
});

app.get('/test', (req, res) => {
  res.status(200).json({ status: 'App is running' });
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});

module.exports = app; // Export for testing
