import mysql.connector as connection
import pandas as pd
import pandasql as ps
from datetime import datetime

#extract
def extract_from_mysql(databaseName):
    try:
        mydb = connection.connect(host="localhost",
                                  database = databaseName,
                                  user="root",
                                  password="root",
                                  use_pure=True)
        query = "Select * from transaction;"
        result_dataFrame = pd.read_sql(query,mydb)
        mydb.close() #close the connection
        return result_dataFrame
    except Exception as e:
        mydb.close()
        print(str(e))
        return None

#transform
def transform(dataFrame):
    gross_revenue_table = gross_revenue_per_userID(dataFrame)
    gross_revenue_table.index += 1
    
    unit_sold_table = unit_sold_per_productID(dataFrame)
    unit_sold_table.index += 1

    dau_table = daily_active_users(dataFrame)
    dau_table.index += 1
    
    table_dictionary = {"Gross Revenue per User ID": gross_revenue_table,
                        "Unit Sold per User ID": unit_sold_table,
                        "Daily Active User": dau_table}
    return table_dictionary

def gross_revenue_per_userID(dataFrame):
    return ps.sqldf("select user_id, sum(quantity * unit_price) as gross_revenue from dataFrame group by user_id;")

def unit_sold_per_productID(dataFrame):
    return ps.sqldf("select product_id, sum(quantity) as unit_sold from dataFrame group by product_id;")

def daily_active_users(dataFrame):
    df_duplicate = dataFrame.copy()
    convert_datetime = pd.to_datetime(df_duplicate['transaction_time'], unit='us')
    df_duplicate['transaction_time'] = convert_datetime.dt.date
    return ps.sqldf("select transaction_time as success_date, count(DISTINCT user_id) as active_user from df_duplicate group by transaction_time;")

#load
def load_dictionary_of_table_to_xlsx(dictionaryOfTable, file_name):
    with pd.ExcelWriter(file_name) as writer:
        for sheet_name, table in dictionaryOfTable.items():
            table.to_excel(writer, sheet_name=sheet_name)

#other
def get_month_from_system():
    month = datetime.now().month-1 if datetime.now().month > 1 else 12
    month = str(month) if month > 9 else "0"+str(month)
    return month

def main():
    try:
        #change this variable for dummy testing
        month = get_month_from_system()
        file_name = "monthly_report_{month}.xlsx".format(month=month)

        toTransform = extract_from_mysql("sales"+month)

        toLoad = transform(toTransform)
            
        load_dictionary_of_table_to_xlsx(toLoad, file_name)

        print("Success")
    except Exception as e:
        print("Error")
        

if __name__ == '__main__':
    main()
