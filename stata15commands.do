cd E:\sublimestatasyntax

** Create csv with all Stata 15 commands
getcmds using allcommands.csv, all replace

** Import list of commands, give the command variable a name, export to final file
import delimited allcommands.csv, clear

rename v1 command

replace command = strtrim(command)

export delimited using stata15commands.csv, replace

cap erase allcommands.csv
