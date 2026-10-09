# Banking Application

A simple PHP and MySQL banking demo with login, deposit, withdrawal, fund transfer, and session-based transaction history.

## Demo Login

- Username: `admin`
- Password: `admin123`

## Run Locally With XAMPP

1. Start MySQL from XAMPP Control Panel.
2. Import the database:

   ```powershell
   C:\xampp\mysql\bin\mysql.exe -u root < database.sql
   ```

3. Start the PHP development server:

   ```powershell
   C:\xampp\php\php.exe -S 127.0.0.1:8000 -t .
   ```

4. Open `http://127.0.0.1:8000`.

The app uses these defaults unless environment variables are set:

- `DB_HOST=localhost`
- `DB_USER=root`
- `DB_PASSWORD=`
- `DB_NAME=banking_db`
