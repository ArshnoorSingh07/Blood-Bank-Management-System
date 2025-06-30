const express = require("express");
const router = express.Router();
const db = require("../db");

router.post("/", async (req, res) => {
  const { name, email, phone, blood_group } = req.body;
  try {
    const query = `
      INSERT INTO recipient (name, email, phone_no, blood_group)
      VALUES (?, ?, ?, ?)
    `;
    await db.execute(query, [name, email, phone, blood_group]);
    res.status(200).json({ message: "Request submitted successfully" });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Failed to insert request" });
  }
});

module.exports = router;
