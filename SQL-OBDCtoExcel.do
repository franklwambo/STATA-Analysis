cd "C:\Users\frank\Desktop\Asembo_20212"
//declare variables
local village = "26"
local round = "20213"
//now run the SQL code
local db = "DRIVER={SQL Server Native Client 11.0};SERVER={FRANCO\MSSQL2014};DATABASE=HRB_Asembo;trusted_connection=yes;"

local visitsql = "EXEC completeness.unvisited_locations `village',`round'"
odbc load, exec("`visitsql'") connectionstring("`db'") clear
//export the Excel file
export excel using "Completeness.xls", sheet("locations_not_visited") firstrow(variables) replace


local phonesql = "EXEC completeness.missing_phone `village',`round'"
odbc load, exec("`phonesql'") connectionstring("`db'") clear
//export the Excel file
export excel using "Completeness.xls", sheet("missing_phone") firstrow(variables)

