#!/usr/bin/env node

import fs from "fs";
import mysql from "mysql2/promise";
import readline from "readline";
import chalk from "chalk";
import path from "path";
import { fileURLToPath } from "url";

// Fix paths so SQL files are found no matter where the CLI is run
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const schemaPath = path.join(__dirname, "schema.sql");
const seedPath = path.join(__dirname, "seed-data.sql");

// Check if files exist
if (!fs.existsSync(schemaPath)) {
    console.error(chalk.red(`❌ Missing file: ${schemaPath}`));
    process.exit(1);
}
if (!fs.existsSync(seedPath)) {
    console.error(chalk.red(`❌ Missing file: ${seedPath}`));
    process.exit(1);
}

const schema = fs.readFileSync(schemaPath, "utf8");
const seedData = fs.readFileSync(seedPath, "utf8");

// Helper to ask user input
async function ask(question) {
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout,
    });
    return new Promise((resolve) =>
        rl.question(chalk.cyan(question), (ans) => {
            rl.close();
            resolve(ans);
        })
    );
}

async function main() {
    console.log(chalk.green.bold("\n=== MySQL Seeder App ===\n"));

    const host = (await ask("MySQL Host (default: localhost): ")) || "localhost";
    const user = (await ask("MySQL User (default: root): ")) || "root";
    const password = await ask("MySQL Password: ");
    const database = await ask("Database name: ");

    console.log(chalk.yellow("\n⏳ Connecting to database..."));

    const connection = await mysql.createConnection({ host, user, password });
    await connection.query(`CREATE DATABASE IF NOT EXISTS \`${database}\`;`);
    await connection.changeUser({ database });

    console.log(chalk.green("✅ Database ready: ") + chalk.bold(database));

    console.log(chalk.yellow("\n⏳ Loading schema..."));
    const statements = schema
        .split(/;\s*$/m)
        .map((s) => s.trim())
        .filter((s) => s.length);

    for (const stmt of statements) {
        try {
            await connection.query(stmt);
        } catch (err) {
            console.error(chalk.red(`❌ Error executing:\n${stmt}\n`), err.message);
        }
    }
    console.log(chalk.green("✅ Schema created successfully!"));

    console.log(chalk.yellow("\n⏳ Inserting seed data..."));
    const dataStatements = seedData
        .split(/;\s*$/m)
        .map((s) => s.trim())
        .filter((s) => s.length);

    for (const stmt of dataStatements) {
        try {
            await connection.query(stmt);
        } catch (err) {
            console.error(chalk.red(`❌ Error executing:\n${stmt}\n`), err.message);
        }
    }
    console.log(chalk.green("✅ Dummy data inserted!"));

    await connection.end();
    console.log(chalk.blue.bold("\n🎉 All done! Your database is ready.\n"));
}

main().catch((err) => {
    console.error(chalk.red.bold("❌ Error: "), err.message);
});
