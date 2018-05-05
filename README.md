# walletawk
A minimal wallet, written in AWK language



#### What this script can do?
This sorta of wallet allows to keep an eye on our personal income and expenditure.


#### What is the correct format of input file?
For the moment, the script uses only the first field of the lines with the income or the outcome. An entrance is represented by a `+n`, an expenditure by `-n` where **n** is the amount of the "movement".
The script will interpret lines of different format like new months.

#### Example of `wallet.txt` input file

    May 2018
    +20        2018/05/01
    -8         2018/05/05        pizza

#### Usage
Inside the shell:
* `cd /path/of/the/awk/script/`
* `chmod +x wallet.awk`
* `./wallet.awk wallet.txt`
