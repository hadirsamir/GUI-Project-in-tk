# Import MariaDB
import mysql.connector as mariadb


u="root"
theDatabase="school"


mariadb_connection = mariadb.connect(user= u, password='', database= theDatabase)
rows = mariadb_connection.cursor()   # database connection
