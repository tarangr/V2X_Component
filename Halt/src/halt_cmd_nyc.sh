#!/bin/sh
##########################################################################################################
####################### "Run" command authenticity and power mode status logging #######################################################
#------------------------------------------------------------------------------
# Copyright (c) 2018 Danlaw Inc.
# Archana Kumari
# release 0.0
# release 0.1
# Modified by BSP TEAM
#-----------------------------------------------------------------------------
##########################################################################################################
user1=root
pswd1=danlaw
user2=nyc
pswd2=nyc123
LOG_DATE=$(date +%Y%m%d.%H%M%S)
read -p "User: " user
case "$user" in
	root)
		if [ $(whoami) == "root" -a "$user" = "$user1" ]
		then
			read -s -p "password: " pass
			if test "$pass" = "$pswd1"
			then
				/usr/bin/rc.asd stop
				echo $LOG_DATE >> /opt/tmpSSL.txt 2>/dev/null
				echo -e "SSL_ID 3 System Going to Halt Mode" >> /opt/tmpSSL.txt 2>/dev/null
			else
				echo -e "\ninvalid password\n"
			fi
		else 
			echo -e "\nYou are logged in as $(whoami) \n"
		fi
	;;
	nyc)
		if [ $(whoami) == "nyc" -a "$user" = "$user2" ]
		then
			export PATH=$PATH:/sbin
			read -s -p "password: " pass
			if test "$pass" = "$pswd2"
			then
				cd /usr/bin/
				./rc.asd stop
				echo $LOG_DATE >> /opt/tmpSSL.txt 2>/dev/null
                                echo -e "SSL_ID 3 System Going to Halt Mode" >> /opt/tmpSSL.txt 2>/dev/null
			else
				echo -e "\ninvalid password\n"
			fi
		else 
			#echo -e "\nPlease provide current user login\n"
			echo -e "\nYou are logged in as $(whoami) \n"
		fi
	;;
	*)
		echo -e "\nNO such user\n"
	;;
esac
exit 0
