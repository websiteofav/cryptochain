const express = require("express");
const keys = require("../config/keys");
const axios = require("axios");

const { check, validationResult, body } = require("express-validator");

const router = express.Router();

router.get("/trending-latest", async (req, res) => {
  try {
    const config = {
      headers: {
        // Accepts: "application/json",
        "X-CMC_PRO_API_KEY": keys.coinMarketAPIKey,
        // "Content-Type": "application/json",
      },
    };
    const body = {
      params: {
        limit: parseInt(req.body.limit, 10),
        convert: req.body.convert,
      },
    };

    let response = await axios.get(
      "https://pro-api.coinmarketcap.com/v1/cryptocurrency/trending/latest",
      config

      //   {
      //     params: {
      //       time_period: "30d",
      //     },
      //   }

      //   thi
    );
    console.log(response.data);
    res.send(response.data);
  } catch (ex) {
    console.log("Error");
    // console.log(ex);
  }
});

module.exports = router;
