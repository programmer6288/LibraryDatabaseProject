import mysql.connector
from mysql.connector import Error
import hashlib
import os
import base64

is_logged_in = False
librarian_id = 0
connection = mysql.connector.connect(host='localhost',
                                     database='libdb',
                                     user='root',
                                     password='callate2#madre')
cursor = connection.cursor()

def gethash(x):
    result = hashlib.sha256(x.encode())
    return result.hexdigest()

def signup():
    result = [1]
    while(len(result) > 0):
        username = input('Create a username: ')
        cursor.execute('select * from librarian where name = %s', (username,))
        result = cursor.fetchall()
        if(len(result) > 0):
            print('Choose a different username')
    password = input('Create a password: ')
    salt = str(base64.b64encode(os.urandom(16)))[2:26]
    userhash = gethash(password + salt)
    cursor.execute('insert into librarian (name, hash, salt) values (%s, %s, %s)', (username, userhash, salt))
    connection.commit()

def login():
    global is_logged_in
    global librarian_id
    username = input('Username: ')
    password = input('Password: ')
    cursor.execute('select * from librarian where name = %s', (username,))
    result = cursor.fetchall()
    if(len(result) > 0):
        passwordhash = gethash(password + result[0][3])
        if(passwordhash == result[0][2]):
            is_logged_in = True
            librarian_id = result[0][0]
            print('You are successfully logged in')
        else:
            is_logged_in = False
            print('Your username or password is wrong')
    else:
        is_logged_in = False
        print('Your username or password is wrong')

def processwithdrawl(title, user):
    if(is_logged_in):
        cursor.execute('select user_id from user where name = %s', (user,))
        result = cursor.fetchall()
        try:
            cursor.callproc('withdraw_book', (title, result[0][0]))
            connection.commit()
        except:
            print('You cannot do this')
    else:
        print('You must be logged in to process withdrawls')

def processreturn(title, user):
    if(is_logged_in):
        cursor.execute('select withdrawl_id from withdrawl left join `return` using (withdrawl_id) where return_id is null')
        result = cursor.fetchall()
        try:
            cursor.callproc('return_book', (result[0][0],))
            connection.commit()
        except:
            print('There is no valid withdrawl out with these parameters')
    else:
        print('You must be logged in to process returns')



