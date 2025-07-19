# app.py
from flask import Flask
import mysql.connector
import os

app = Flask(__name__)

# Database configuration from environment variables
db_config = {
    'host': os.getenv('MYSQL_HOST', 'mysql-service'),
    'user': os.getenv('MYSQL_USER', 'root'),
    'password': os.getenv('MYSQL_PASSWORD', 'password'),
    'database': os.getenv('MYSQL_DATABASE', 'mydatabase')
}

@app.route('/')
def hello():
    try:
        connection = mysql.connector.connect(**db_config)
        cursor = connection.cursor()
        cursor.execute("SELECT VERSION()")
        version = cursor.fetchone()
        cursor.close()
        connection.close()
        return f"Connected to MySQL Server version: {version[0]}"
    except Exception as e:
        return f"Error connecting to MySQL: {str(e)}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
