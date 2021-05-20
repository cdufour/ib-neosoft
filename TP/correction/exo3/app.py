from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__)

cnx = mysql.connector.connect(
  host="db",
  user="root",
  password="password",
  database="exo3"
)

cur = cnx.cursor(buffered=True)
cur.execute("CREATE TABLE IF NOT EXISTS user (name VARCHAR(100))")

@app.route("/", methods=['GET', 'POST'])
def index():
  if request.method == 'POST':
    name = request.form['name']
    
    # insertion en db
    query = "INSERT INTO user (name) VALUES ('%s')" % (name)
    cur.execute(query)
    cnx.commit()
    
    return name
  return render_template('index.html')