const express = require("express");
const router = express.Router();
const db = require("../db");

router.post("/", async (req, res) => {
  const { name, email, phone, dob, blood_group } = req.body;
  try {
    const query = `
      INSERT INTO donor (name, email, Phone_number, DOB, blood_group)
      VALUES (?, ?, ?, ?, ?)
    `;
    await db.execute(query, [name, email, phone, dob, blood_group]);
    res.status(200).json({ message: "Donor added successfully" });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Failed to insert donor" });
  }
});

module.exports = router;
