import { spawn } from 'child_process'
import { createWriteStream, WriteStream } from "fs";
// Define types for database connection options
interface DbOptions {
    host: string;
    port: string;
    user: string;
    password: string;
    database: string;
    option? : BackupOptions
}

// Define types for backup options
interface BackupOptions {
    dest?: string; // Destination file path
    schema?: boolean; // Include schema (CREATE TABLE statements)
    data?: boolean; // Include data (INSERT INTO statements)
}

// Database connection options
const dbOptions = {
    connection: {
        host: process.env.HOST!,
        user: process.env.USER!,
        port: process.env.PORT!,
        password: process.env.PASSWORD!,
        database: process.env.DB_NAME!,
    },
    dump: {
        schema: {
            autoIncrement: true,
            format: true,
        },
        data: {
            format: true,
            includeViewData: true,
            lockTables: true,

        }

        ,
        trigger: {
            definer: true,
            dropIfExist: true
        }
    },
    dumpToFile: `./backup/${process.env.DB_NAME!}-${new Date().toISOString().slice(0, 10)}.sql`
};


async function mySqlDump(params: DbOptions) {
    const dump = spawn('mysqldump', [
        '-u',
        params.user,
        '-p',
        params.password,
        '-h',
        params.host,
        '-p',
        params.port,
        params.database
    ])
    const dumpFileName = params.option?.dest || `./backup/${process.env.DB_NAME!}-${new Date().toISOString().slice(0, 10)}.sql`

    const writeStream = createWriteStream(dumpFileName)
    dump
        .stdout
        .pipe(writeStream)
        .on('finish', function () {
            console.log('Completed')
        })
        .on('error', function (err) {
            console.log(err)
        })


}
// Function to take backup
async function takeBackup() {
    try {
        console.log('Starting backup process...');
        await mySqlDump({
            database: dbOptions.connection.database,
            host: dbOptions.connection.host,
            password: dbOptions.connection.password,
            port: dbOptions.connection.port,
            user: dbOptions.connection.user,
            option: {
                dest: dbOptions.dumpToFile,
            }
        });
        console.log('Backup completed successfully.');
    } catch (error) {
        console.error('Backup failed:', error);
    }
}

// Call the function to take backup
takeBackup();
