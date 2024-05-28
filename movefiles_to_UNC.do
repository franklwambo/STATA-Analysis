//set the full path to the source directory where the CSV files sit
global dir "C:/Users/"

//set a file handler for all the CSV files
local file: dir "$dir" files "*.csv"

//loop through each CSV file and copy to the destination drive \\keklf-vae\E$\My Data
foreach f of local file{
    copy "$dir`f'"  "\\keklf-vae/E$/My Data/`f'"
}
