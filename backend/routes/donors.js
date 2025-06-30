// backend/routes/donors.js
const express = require("express");
const router = express.Router();
const db = require("../db");

router.get("/", async (req, res) => {
  try {
    const [rows] = await db.execute("SELECT id, name, email, Phone_number, blood_group FROM donor");
    res.status(200).json(rows);
  } catch (err) {
    console.error("Error fetching donors:", err);
    res.status(500).json({ error: "Failed to fetch donors" });
  }
});

module.exports = router;
