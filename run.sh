rm *.db
sqlite3 Data.db < DB/create.sql
sqlite3 Data.db < DB/load.txt