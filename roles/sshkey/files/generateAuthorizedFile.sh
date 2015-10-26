#!/bin/sh

   cd ~
   if [ -d .ssh ]
	then  cd .ssh
	      if [ ! -f authorized_keys ] 
		   then
			touch authorized_keys
			chmod 600 authorized_keys
	      fi 
  else
		mkdir .ssh
		chmod 700 .ssh
		cd .ssh 
		touch authorized_keys
		chmod 600 authorized_keys
   fi
    
