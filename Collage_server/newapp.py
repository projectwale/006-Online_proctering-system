


from flask import Flask, render_template, request, session, url_for, redirect, jsonify
import pymysql
from register import register_yourself

from werkzeug.utils import secure_filename
import os
app = Flask(__name__)
app.secret_key = 'random string'

#Database Connection
def dbConnection():
    connection = pymysql.connect(host="localhost", user="root", password="root", database="150onlineproctoring")
    return connection


def dbClose():
    dbConnection().close()
    return




@app.route('/index')
@app.route('/')
def index():
    session['userloc']= request.args.get("location")
    locationis=session['userloc']
    print(locationis)
    return render_template('index.html')




@app.route('/captureuserfaceandsavebyname',methods=["GET","POST"])
def captureuserfaceandsavebyname():
    if request.method == "POST":
     
        usernamelist =request.form["username"]
        company_name = request.form["company_name"]
        start_date = request.form["start_date"]
        End_date = request.form["End_date"]
        technlogy_worked = request.form["technlogy_worked"]
    
        register_yourself(usernamelist,company_name, start_date, End_date, technlogy_worked)
        print("Registration Successful")
        message = "Registration successfully added by admin side"+" "+"username is-"+usernamelist
        return render_template('home.html',message=message)
    
    



@app.route('/home')
def home():
    if 'user' in session:
        return render_template('home.html', user=session['user'], s=list,username=session['username'])
    return redirect(url_for('index'))


@app.route('/login', methods=["GET","POST"])
def login():
    msg = ''
  
    if request.method == "POST":
        # session.pop('user',None)
        mobno = request.form.get("mobile")
        password = request.form.get("pas")
        # marked,studentName,dt = mark_your_attendance()
        # print(marked,"\n",studentName,"\n",dt)
        con = dbConnection()
        cursor = con.cursor()
        result_count = cursor.execute('SELECT * FROM userdetails WHERE mobileno = %s AND password = %s',(mobno, password))
        res = cursor.fetchone()
        print(res)
        if result_count > 0:
            print(result_count)
            session['user'] = mobno
            session['uid'] = res[0]
            session['username'] = res[1]
            
            return redirect(url_for('home'))
        else:
            print(result_count)
            msg = 'Incorrect username/password!'
            return render_template('login.html')
    return render_template('login.html')

@app.route('/register', methods=["GET","POST"])
def register():
    print("register")
    if request.method == "POST":
        try:
            name = request.form.get("name")
            address = request.form.get("address")
            mailid = request.form.get("mailid")
            mobile = request.form.get("mobile")
            pass1 = request.form.get("pass1")
            con = dbConnection()
            cursor = con.cursor()
            cursor.execute('SELECT * FROM userdetails WHERE mobileno = %s', (mobile))
            res = cursor.fetchone()
            if not res:
                sql = "INSERT INTO userdetails (name, address, emailid, mobileno, password) VALUES (%s, %s, %s, %s, %s)"
                val = (name, address, mailid, mobile, pass1)
                cursor.execute(sql, val)
                con.commit()
    
                message = "Registration USER successfully added by USER side"+" "+"username is-"+name
                # return redirect(url_for('index'))
                return render_template('register.html',message=message)
            else:
                message = "Already available"
            return render_template('register.html',message=message)
        except Exception as inst:
            print(inst)
            print("Exception occured at user registration")
            return redirect(url_for('index'))
        finally:
            dbClose()
    return render_template('register.html')



#logout code
@app.route('/logout')
def logout():
    session.pop('user')
    return redirect(url_for('index'))


if __name__ == '__main__':
    # app.run('0.0.0.0')
    app.run(debug=True)
