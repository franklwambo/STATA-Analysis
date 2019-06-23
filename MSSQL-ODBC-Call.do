//in case you have multiple database instances
//loading an SQL stored procedure to stata\person
local db = "DRIVER={SQL Server Native Client 11.0};SERVER=machine_name\instance;DATABASE=database_name;UID=database_user;PWD=database_password"

// SQL SELECT statement to retrieve data
*Data person

local sql = "select * from person"
odbc load, exec("`sql'") connectionstring("`db'") clear

//Do this if making a stored procedure call
local sql = "EXEC Get_HDSS_Residency"
// Load data via ODBC (using connection string)
odbc load, exec("`sql'") connectionstring("`db'") clear