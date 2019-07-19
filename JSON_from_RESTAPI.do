//you need to do ssc install insheetjosn to be able to load JSON files to STATA
gen str50 employee_name=""
gen str50 employee_salary=""
gen str50 employee_age=""
insheetjson using "http://localhost:82/api/v1/employees", col("employee_name" "employee_salary" "employee_age")
