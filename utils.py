import mysql.connector
from mysql.connector import Error

def read_data():
    try:
        connection = mysql.connector.connect(host='localhost',
                                            database='peluqueria',
                                            user='root',
                                            password='')
        if connection.is_connected():
            mycursor = connection.cursor()
            mycursor.execute("SELECT * FROM Perro")
            myresult = mycursor.fetchall()
            for x in myresult:
                print(x)

    except Error as e:
        print("Error while connecting to MySQL", e)
    finally:
        if connection.is_connected():
            connection.cursor.close()
            connection.close()

def write_data():
    try:
        connection = mysql.connector.connect(host='localhost',
                                            database='peluqueria',
                                            user='root',
                                            password='')
        if connection.is_connected():
            mycursor = connection.cursor()
            sql = """INSERT INTO Perro (nombre, fecha_de_nacimiento,sexo,dni) 
                VALUES (%s, %s, %s, %s)"""
            val = ("Puppy", "12/12/2012","Macho","123")
            mycursor.execute(sql, val)
            connection.commit()

    except Error as e:
        print("Error while connecting to MySQL", e)
    finally:
        if connection.is_connected():
            connection.cursor.close()
            connection.close()

def update_data():
    try:
        connection = mysql.connector.connect(host='localhost',
                                            database='peluqueria',
                                            user='root',
                                            password='')
        if connection.is_connected():
            mycursor = connection.cursor()
            sql = """UPDATE Perro SET (fecha_de_nacimiento,dni) 
                VALUES (%s, %s)"""
            val = ("13/12/2012","28957346")
            mycursor.execute(sql, val)
            connection.commit()

    except Error as e:
        print("Error while connecting to MySQL", e)
    finally:
        if connection.is_connected():
            connection.cursor.close()
            connection.close()