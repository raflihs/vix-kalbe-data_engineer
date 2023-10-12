import mysql.connector

# Melakukan percobaan koneksi
conn = mysql.connector.connect(
    host="localhost",
    port='3300',
    user="root",
    password="something",
    database="kalbe"
)

# Membuat object cursor sebagai penanda
cursor = conn.cursor()

# Deklarasi sql query untuk memasukkan record ke db (karyawan)
insert_sql = """
INSERT INTO karyawan (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)
VALUES (%s, %s, %s, %s, %s)
"""

values = ("John", "Doe", 30, "Male", 50000)

try:
    # Eksekusi sql command
    cursor.execute(insert_sql, values)

    # Melakukan perubahan (commit) pada db
    conn.commit()
    print("Data inserted successfully!")

except Exception as e:
    # Roll back apabila ada issue
    conn.rollback()
    print(f"Error: {e}")

finally:
    # Menutup koneksi
    cursor.close()
    conn.close()
