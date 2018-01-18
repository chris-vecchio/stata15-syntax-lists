# Stata 15 function and command lists
A process to generate lists of Stata commands and functions in csv format. I needed lists of all Stata functions and commands to update a Sublime Text 3 syntax file from Stata 14 to Stata 15. A quick google search turned up other Stata users looking for similar lists. I never found a complete solution so I decided to make my own. I (very) briefly describe the process I used for functions and commands. I've included all files needed to duplicate the process in the repo. Disclaimer: I haven't gone over the results in detail so please let me know if you see something incorrect or missing. Thanks and enjoy!


## Functions
To get the full list of functions, I exported the [**Functions by name**](https://www.stata.com/manuals/fnfunctionsbyname.pdf) Stata manual section to Excel using Adobe Acrobat Pro DC and used Stata to clean up the results. *Some manual inspection and editing of the data was required.*

## Commands
To get a list of Stata 15 commands, I used the ```getcmds``` package by Jeff Pitblado.
```
. net install getcmds.pkg
```
