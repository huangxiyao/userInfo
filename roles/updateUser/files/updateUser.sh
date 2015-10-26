#/bash/bin           
dateTmp=$(chage -l $1 | grep Last | awk 'BEGIN{FS=":"}{print $2}')
if [ ! -n "$dateTmp" ]
	then  echo "this user is not existed"
else
	date1=$(date -d "$dateTmp" +%s)
	date2=$(date -d "$currentTime" +%s)
	tmp=$(($date2 - $date1))
	dayTmp=$(($tmp/86400))
	timeTmp=$(chage -l $1 | grep Max | awk 'BEGIN{FS=":"}{print $2}')	
	if [ $dayTmp -gt $timeTmp ]
		then   	echo "user----"$1  
			chage -M $2 $1
	fi
fi
