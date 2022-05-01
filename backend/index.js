const express = require("express");
const path = require("path");

const app = express();

app.use(
  express.json({
    extended: false,
  })
);
const PORT = process.env.PORT || 5000;

app.get("/", (req, res) => {
  res.send(`Working`);
});

app.use("/api/homepage", require("./routes/homepage"));

app.listen(PORT, () => console.log(`Server running on PORT ${PORT}`));
