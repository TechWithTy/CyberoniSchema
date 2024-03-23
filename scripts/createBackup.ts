import mySqlDump, { Options } from 'mysqldump';
import * as fs from 'fs';

// Define types for database connection options
interface DbOptions {
    host: string;
    user: string;
    password: string;
    database: string;
}

// Define types for backup options
interface BackupOptions {
    dest: string; // Destination file path
    schema: boolean; // Include schema (CREATE TABLE statements)
    data: boolean; // Include data (INSERT INTO statements)
}

// Database connection options
const dbOptions: Options = {
    connection: {
        host: process.env.HOST!,
        user: process.env.USER!,
        password: process.env.PASSWORD!,
        database: process.env.DB_NAME!
    },
    dump: {
        schema: {
            autoIncrement:true,
            format: true,
        },
        data: {format: true ,
        includeViewData: true,
        lockTables:true,

    }
        
        ,
        trigger: {
            definer:true,
            dropIfExist:true
        }
    },
    dumpToFile: `./backup/${process.env.DB_NAME!}-${new Date().toISOString().slice(0, 10)}.sql`
};


// Function to take backup
async function takeBackup() {
    try {
        console.log('Starting backup process...');
        await mySqlDump(dbOptions);
        console.log('Backup completed successfully.');
    } catch (error) {
        console.error('Backup failed:', error);
    }
}

// Call the function to take backup
takeBackup();
