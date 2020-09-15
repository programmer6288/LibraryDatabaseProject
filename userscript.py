import mysql.connector
from mysql.connector import Error
import hashlib
import os
import base64

is_logged_in = False
user_id = 0
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
        cursor.execute('select * from user where name = %s', (username,))
        result = cursor.fetchall()
        if(len(result) > 0):
            print('Choose a different username')
    password = input('Create a password: ')
    salt = str(base64.b64encode(os.urandom(16)))[2:26]
    userhash = gethash(password + salt)
    cursor.execute('insert into user (name, hash, salt) values (%s, %s, %s)', (username, userhash, salt))
    connection.commit()

def login():
    global is_logged_in
    global user_id
    username = input('Username: ')
    password = input('Password: ')
    cursor.execute('select * from user where name = %s', (username,))
    result = cursor.fetchall()
    if(len(result) > 0):
        passwordhash = gethash(password + result[0][3])
        if(passwordhash == result[0][2]):
            is_logged_in = True
            user_id = result[0][0]
            print('You are successfully logged in')
        else:
            is_logged_in = False
            print('Your username or password is wrong')
    else:
        is_logged_in = False
        print('Your username or password is wrong')

def search(title):
    if(is_logged_in):
        cursor.execute('select * from book where title = %s', (title,))
        result = cursor.fetchall()
        if(len(result) > 0):
            book_id = result[0][0]
            cursor.execute('select total_copy(%s)', (book_id,))
            result = cursor.fetchall()
            total_copies = result[0][0]
            cursor.execute('select num_copy_available(%s)', (book_id,))
            result = cursor.fetchall()
            available_copies = result[0][0]
            print('%s | %s/%s copies available' % (title, available_copies, total_copies,))
        else:
            print('There is no book with this name in stock.')
    else:
        print('You must log in before you are able to search.')

def placehold(title):
    global user_id
    if(is_logged_in):
        cursor.execute('select * from book where title = %s', (title,))
        result = cursor.fetchall()
        if(len(result) > 0):
            try:
                cursor.callproc('place_hold', (title, user_id))
                connection.commit()
            except:
                print('You cannot do this.')
        else:
            print('There is no book with this name in stock.')
    else:
        print('You must log in before you are able to place a hold.')

def getwithdrawls():
    global user_id
    if(is_logged_in):
        cursor.execute('select * from withdrawl left join `return` using (withdrawl_id) where return_id is null')
        result = cursor.fetchall()
        print(result)
    else:
        print('You must log in to see your withdrawls.')
    
        


