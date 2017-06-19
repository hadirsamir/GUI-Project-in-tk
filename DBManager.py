# Import MariaDB
import mysql.connector as mariadb


u="root"
theDatabase="playground"


mariadb_connection = mariadb.connect(user= u, password='', database= theDatabase)
rows = mariadb_connection.cursor()   # database connection
