cd "working_dir"
* test is the sub folder within the dir set above
clear
local csvfiles: dir "test" files "*.csv"
foreach file of local csvfiles {
preserve
insheet using "test/`file'", clear
** add syntax here to run on each file**
save temp, replace
restore
append using temp
}