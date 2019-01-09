# logparser

There is only one script **lookforapache.sh**. It should be executable. 

It takes several variables like: **log to parse**, **combination to look for** (it might be 'Fatal error' or 'Out of memory') and **action**
Be default it sends email to server administrator but action can be easily adjusted


# How to #

It workes like deamon started by runit.
On Debian systems install runit


> apt-get update && apt-get install runit


Create folder for run script

> mkdir /etc/sv/errorparser/


Copy run script from repo

> cp run /etc/sv/errorparser/



*!*Adjust path in run script


Activate

> ln -s /etc/sv/errorparser/ /etc/service/




## If you want to run deamon as non-privilieged user ##


> sudo chmod 755 /etc/sv/errorsparser/supervise/


> sudo chown YOUR-USER /etc/sv/errorsparser/supervise/status


> sudo chown YOUR-USER /etc/sv/errorsparser/supervise/ok


> sudo chown YOUR-USER /etc/sv/errorsparser/supervise/control

