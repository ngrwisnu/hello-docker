const express = require("express");
const app = express();
require("dotenv").config();

const port = process.env.PORT || 3000;
let counter = 0;

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.get("/health-check", (req, res) => {
  counter += 1;

  if (counter > 3) {
    res.status(400).send("Express is Sick!");
  } else {
    res.status(200).send(`Let's count again (${counter})`);
  }
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
