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

//this goes for dta files
//egen box_no=concat( box_prefix box), punct("-")
	
cd "D:\safehandles\carriage_samples\ref"
clear
append using `: dir . files "*.dta"', keep(site box position)
