# wallet-awk
A minimal wallet, written in AWK language



#### What can this script do?

This sorta of wallet allows to keep an eye on our personal income and expenditure.


#### What is the correct format of input file?

For the moment, the script uses only the first field of the lines with the income or the outcome. An entrance is represented by a line that strart with `+n` an expenditure line, instead, starts `-n` where **n** is the amount of the "movement".  The script will interpret no blank lines of different format like new months.
It is possible to obtain two kind of output:
* A final global overview that shows only the total residual amount
* A monthly overview that shows even the total residual amount for all the months

#### Usage

The script need an input file with the right format, for instance:

    <Month> <year>
    <Movement amount(positive or negative)>		<date>     <short movement description>
    <maybe a blank line>
    <Month> <year>
    and so on...


Giving input file format for granted. After the download and either after the input file creation called, for instance, `wallet.txt`, we can put the script called `wallet.awk` and the input file togheter in the same directory. After that we can go inside the shell and do this:
* `cd /path/of/the/awk/script/and/text/file`
* `chmod +x wallet.awk` this command is necessary first time only
* `./wallet.awk wallet.txt` for the total residual amount only **or** `./wallet.awk wallet.txt --monthly` to see even the total residual amount for all the months


#### Example of input file

    May 2018
    -20        	2018/05/01	 grocery shop
    -8         	2018/05/05       pizza

    June 2018
    +15		2018/06/01	 tip
 
 

#### `enqueue_walle.sh`

`enqueue_walle.sh` is a bash script that allows to easily add new movements to your `wallet.txt` file with the following format:

    <amount>            <today_date (is automaticcally added)>           <description>
  
   > Usage:
   
   * `chmod +x enqueue_walle.sh` this command is necessary first time only
   * `./enqueue_walle.sh`
