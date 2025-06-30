
# 🩸 Blood Bank Management System

A full-stack Blood Bank Management System designed to streamline blood donation and request processes, ensuring faster access to life-saving resources.

---

## 📌 Project Overview

The **Blood Bank Management System** enables hospitals, organizations, and individuals to manage blood donations, donor and recipient data, inventory, and blood donation camps through a unified platform.

Built as part of an academic project (UCS310), this system combines a normalized relational database in MySQL with a clean frontend using HTML, CSS, and JavaScript.

---

## 💡 Key Features

- 🧑‍🤝‍🧑 **Donor and Recipient Registration**
- 🩸 **Real-time Blood Inventory View**
- 📥 **Blood Donation Form**
- 📤 **Blood Request Form**
- 🏥 **Organization & Donation Camp Management**
- 🔐 **Password Management (simulated)**
- 📊 **Normalized Database Design (1NF, 2NF, 3NF)**

---

## 🛠️ Tech Stack

| Layer       | Technology         |
|------------|--------------------|
| Frontend   | HTML, CSS, JavaScript |
| Backend    | Node.js (assumed via `fetch()` to `localhost:5000`) |
| Database   | MySQL              |
| Tools Used | XAMPP / MySQL CLI |

---

## 🗂️ Project Structure

```
├── public/                 # Frontend (HTML/CSS/JS)
│   ├── index.html
│   ├── donate.html
│   ├── donors.html
│   ├── inventory.html
│   ├── request.html
│   └── styles.css
├── donate.html             # Blood donation form
├── request.html            # Blood request form
├── donors.html             # List of registered donors
├── inventory.html          # Blood stock display
├── styles.css              # Styling for all pages
├── complete_bloodbank_with_inserts.sql # Database schema + sample data
├── Blood Bank Management Final.pdf     # Final project documentation
```

---

## 🧬 Database Schema

- **Tables**:
  - `donor`, `recipient`, `request`
  - `donation`, `organisation`, `organizes`
  - `inventory`, `blood`, `recipient1`
- Fully normalized and mapped from ER diagram
- Foreign key constraints ensure data integrity

📌 *ER Diagram, table structures, normalization, and sample data are included in the PDF report.*

---

## 🚀 How to Run Locally

### 📦 Prerequisites
- MySQL (XAMPP or standalone)
- Local server (e.g., Node.js or Python)
- A browser

### 🧰 Setup

3. **Backend Setup**:
   - The backend can be developed using any stack that handles HTTP requests. In this project:
     - API endpoints such as `/api/donate`, `/api/request`, and `/api/donors` are assumed to be handled using a backend server (Node.js or similar).
     - The MySQL server is managed using **phpMyAdmin**, a web-based interface included with XAMPP.
       - Access it via `http://localhost/phpmyadmin`
       - Ensure the database `bloodbank` is imported correctly.
       - Configure your backend to connect using credentials: `user=root`, `password=`, and `host=localhost`.



1. **Import the Database**:
   - Use the file `complete_bloodbank_with_inserts.sql` to create and populate the database.
   ```bash
   mysql -u root -p < complete_bloodbank_with_inserts.sql
   ```

2. **Serve Frontend**:
   - Open `index.html` directly or use a local server (recommended).
   - Make sure a backend (like Express.js) listens on `localhost:5000` and handles routes:
     - `/api/donate` (POST)
     - `/api/request` (POST)
     - `/api/donors` (GET)

---

## 👨‍💻 Contributors

- **Arshnoor Singh**
- **Prigya Goyal**

---

## 📄 License

This project is academic and non-commercial. You are free to use or adapt it with attribution.
