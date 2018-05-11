# wallet-awk
A minimal wallet, written in AWK language



#### What this script can do?

This sorta of wallet allows to keep an eye on our personal income and expenditure.


#### What is the correct format of input file?

For the moment, the script uses only the first field of the lines with the income or the outcome. An entrance is represented by a line that strart with `+n` an expenditure line, instead, starts `-n` where **n** is the amount of the "movement".  The script will interpret lines of different format like new months.


#### Usage

The script need an input file with the right format, for instance:

    <Month> <year>
    <Movement amount(positive or negative)>		<date>     <short movement description>
    <maybe a blank line>
    <Month> <year>
    	   	.
	   	.
	   	.
	  	etc...


Giving input file format for granted. After the download and either after the input file creation called, for instance, `wallet.txt`, we can put the script called `wallet.awk` and the input file togheter in the same directory. After that we can go inside the shell and do this:
* `cd /path/of/the/awk/script/and/text/file`
* `chmod +x wallet.awk` this command is necessary first time only
* `./wallet.awk wallet.txt`


#### Example of `wallet.txt` input file

    May 2018
    -20        2018/05/01	 grocery shop
    -8         2018/05/05        pizza

    June 2018
    +15	       2018/06/01	 tip
