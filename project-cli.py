import subprocess as sp
import pymysql
import pymysql.cursors

# import selection
# import projection
# import aggregate
# import search
# import analysis
# import insert
# import update
# import delete
from functions import selection, projection, aggregate, search, analysis, insert, update, delete

clear = lambda : sp.call('clear', shell=True)
wait = lambda: input("Press ENTER key to continue")

def dispatch(ch):
    if ch == 1:
        selection.getinfoCustomer(con, cur)
    elif ch == 2:
        selection.getinfoEmployee(con, cur)
    elif ch == 3:
        selection.Get_Salary(con, cur)
    elif ch == 4:
        projection.getCustomerperModel(con, cur)
    elif ch == 5:
        aggregate.get_total_salary(con, cur)
    elif ch == 6:
        aggregate.Total_Profit(con, cur)
    elif ch == 7:
        search.getinfo_accto_vehicleID_partialsearch(con, cur)
    elif ch == 8:
        analysis.sales_generated(con, cur)
    elif ch == 9:
        analysis.Get_Inventory(con, cur)
    elif ch == 10:
        analysis.getVehiclesSoldperModel(con, cur)
    elif ch == 11:
        insert.add_employee(con, cur)
    elif ch == 12:
        insert.Add_Sale(con, cur)
    elif ch == 13:
        insert.insertCustomer(con, cur)
    elif ch == 14:
        insert.insertVehicle(con, cur)
    elif ch == 15:
        update.update_contact(con, cur)
    elif ch == 16:
        update.Update_Address(con, cur)
    elif ch == 17:
        delete.removeEmployee(con, cur)
    elif ch == 18:
        delete.Return_Vehicle(con, cur)
    else:
        print("Invalid Choice!")
        wait()
    


if __name__ == '__main__':
    flag = True
    while flag:
        clear()

        username = "root"
        password = "blahblah"

        try: 
            con = pymysql.connect(
                host="localhost",
                user=username,
                password=password,
                port=5005,
                db="non_prod",
                cursorclass=pymysql.cursors.DictCursor
            )

            clear()
            if con.open:
                print("Connected")
            else:
                print("Failed to connect")
            
            with con.cursor() as cur:
                while True:
                    clear()

                    print("1. Get Customer Details")
                    print("2. Get Employee Details")
                    print("3. Get Salary of Employee")
                    print("4. Get Customers by Vehicle Model")
                    print("5. Get Total Salary being paid")
                    print("6. Get Total Profit")
                    print("7. Search for a car")
                    print("8. Get Sales Report")
                    print("9. Get Inventory")
                    print("10. Get Models sold")
                    print("11. Add Employee")
                    print("12. Add Sale")
                    print("13. Add Customer")
                    print("14. Add Vehicle")
                    print("15. Update Contact")
                    print("16. Update Address")
                    print("17. Fire Employee")
                    print("18. Return Vehicle to factory")




                    ch = int(input("Enter Choice: "))
                    clear()
                    if ch == -1:
                        flag = False
                        break
                    else:
                        dispatch(ch)
                        
        except Exception as e:
            clear()
            print("Couldn't Connect")
            print(">>", e)
            wait()


