local db "DRIVER={MySQL ODBC 5.3 ANSI Driver};SERVER=host_name;DATABASE=database_name;UID=database_user;;PWD={database_password};Port=3306"
// SQL SELECT statement to retrieve data
local sql = "SELECT person_id,visit_date FROM visit_dates"

// Load data via ODBC (using connection string)
odbc load, exec("`sql'") connectionstring("`db'") clear

so person_id visit_date

gen anc_visit_date=dofc(visit_date)

format anc_visit_date %td

bysort person_id : gen visit_date_diff2 = round((( anc_visit_date - anc_visit_date [_n-1]))/(365/12))