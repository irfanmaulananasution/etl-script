Description:
Script ini adalah penerapan data architecture untuk ETL dari sumber data mysql untuk ke report dalam bentuk xlsx. Contoh hasil Input dan Output bisa dilihat pada .sql dan .xlsx repository ini

Input :
table transaction from mysql database
Transaction : id, user_id, product_id, quantity, unit_price, transaction_time

Output :
table as seen below. output is one xlsx file with each table in its own sheet
Gross_revenue_per_userID : user_id, gross_revenue
Unit_sold_per_productID : product_id, unit_sold
Daily_active_users : success_date, active_user


Asumsi :
1. cron job dimulai pada 0 0 1 * *
2. tiap bulan database nya berbeda/baru
3. input hanya "python etlScript.py"
4. informasi terkait database (host, user, password) dimasukkan secara manual
5. format database selalu "sales<two_digits_month_number>"

Dummy testing:
1. siapkan mysql dengan data dummy yang anda buat. format database adalah "sales<two_digits_month_number>"
2. ubah informasi database pada script di fungsi extract_from_mysql()
3. ubah bulan sesuai data dummy anda pada main()
4. jalankan script

author : 
Irfan Maulana Nasution

