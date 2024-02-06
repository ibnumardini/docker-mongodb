# MongoDB Docker Contabo
This repository provides a customized Docker ecosystem for MongoDB, offering streamlined commands for serving, stopping, backing up, and restoring MongoDB databases.  

## Usage
### Serve
- To run the MongoDB container, execute the following commands:
- Run normally: `make up`
- Run with daemon: `make up-d` 

### Stop
To stop the MongoDB container, use the command:
- `make down`

### Backup
Create a backup of a specific database with the following command:
- `make dump DB_NAME={dbTarget} USER={user} PASS={pass}`

### Restore
Restore a database from a previously created dump with the following command:
- `make restore DB_NAME={dbTarget} USER={user} PASS={pass} DB_DUMP_DIR={dbDumpDir}` <br><br>

Make sure to replace placeholders like `{dbTarget}`, `{user}`, `{pass}`, and `{dbDumpDir}` with your actual values.

Feel free to tailor these commands to suit your specific MongoDB setup and requirements.
