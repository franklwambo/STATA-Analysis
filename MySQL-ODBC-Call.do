local db "DRIVER={MySQL ODBC 5.3 ANSI Driver};SERVER=host_name;DATABASE=database_name;UID=database_user;;PWD={database_password};Port=3306"
// SQL SELECT statement to retrieve data
local sql = "SELECT * FROM person"

// Load data via ODBC (using connection string)
odbc load, exec("`sql'") connectionstring("`db'") clear

//do this if calling a stored procedure 

local sql = "call Extract_Mesh_Round2_Data_Summary()"

// Load data via ODBC (using connection string)
odbc load, exec("`sql'") connectionstring("`db'") clear