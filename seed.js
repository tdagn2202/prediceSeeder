#!/usr/bin/env node
import fs from "fs";
import mysql from "mysql2/promise";
import readline from "readline";
import chalk from "chalk";
const seedData = fs.readFileSync("./seed-data.sql", "utf8");

async function ask(question) {
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout,
    });
    return new Promise((resolve) => rl.question(chalk.cyan(question), (ans) => {
        rl.close();
        resolve(ans);
    }));
}

async function main() {
    console.log(chalk.green.bold("\n=== MySQL Seeder App ===\n"));

    const host = await ask("MySQL Host (default: localhost): ") || "localhost";
    const user = await ask("MySQL User (default: root): ") || "root";
    const password = await ask("MySQL Password: ");
    const database = await ask("Database name: ");

    console.log(chalk.yellow("\n⏳ Connecting to database..."));

    const connection = await mysql.createConnection({ host, user, password });
    await connection.query(`CREATE DATABASE IF NOT EXISTS \`${database}\`;`);
    await connection.changeUser({ database });

    console.log(chalk.green("✅ Database ready: ") + chalk.bold(database));

    console.log(chalk.yellow("\n⏳ Loading schema..."));
    const schema = fs.readFileSync("./schema.sql", "utf8");


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

