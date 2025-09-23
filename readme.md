# 📦 Predice DB Seeder

A simple **database seeder** for the Predice project using **MySQL**.  
This tool helps developers quickly populate their local database with **dummy data** for testing and development.

---

## ✨ Features

- 🌱 Auto-seeds **dummy data** into MySQL
- 🔧 Easy to configure database credentials
- 🎨 Pretty logs with colors (using `chalk`)
- ⚡ Fast seeding with `mysql2`

---

## 📥 Installation

You may wabt to create your MySQL database first, name it whatever you want (eg. `predice`, `predice_db`, etc.)

Install the seeder package:

```bash
npm install predicedbseeder
```

Then run the start command:

```bash
npx predicedbseeder
```

The package will ask you for **host name, database name, user name and password**.

![Example image](./assets/image.png)

Please provide it carefully.
