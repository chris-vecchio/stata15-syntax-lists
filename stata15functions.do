cd E:\sublimestatasyntax

** Import Excel file exported from PDF (https://www.stata.com/manuals/fnfunctionsbyname.pdf)
import excel fnfunctionsbyname.xlsx, sheet("Table 1") allstring clear

drop B C

** Split A on function opening parenthesis
split A, parse("(")
order A, after(A1)

drop if missing(A1)

** Functions can't have spaces
drop if regexm(A1," ")

** Manually drop observations that aren't function names and fix others
drop if inlist(A1,"0","1","10","b","x")

replace A1 = "soundex_nara" if A1 == "soundex  nara"

** Drop duplicate function names
duplicates drop A1, force
compress

keep A1
rename A1 function

export delimited using stata15functions.csv, replace
