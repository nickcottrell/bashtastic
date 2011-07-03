#!/bin/bash
#    /)   ,        /)             /)            
#_/_(/      _     (/   _   _     (/_  _   _ __  
#(__/ )__(_/_)_   / )_(_(_/_)_  /_) _(/__(/_/ (_
#    __               __    __             __  _      __
#   / /_  ____ ______/ /_  / /_____ ______/ /_(_)____/ /
#  / __ \/ __ `/ ___/ __ \/ __/ __ `/ ___/ __/ / ___/ / 
# / /_/ / /_/ (__  ) / / / /_/ /_/ (__  ) /_/ / /__/_/  
#/_.___/\__,_/____/_/ /_/\__/\__,_/____/\__/_/\___(_)
#
#                  /)           ,        
#    __   __  ____(/     _ _/_    _____  
#    /_)_/ (_(_)(_(_(_(_(__(___(_(_) / (_
# .-/                                    
#(_/                                     
# 
# version 1.1
# by nick cottrell (dot) info
# ascii art provided by http://www.network-science.de/ascii/

echo "
               /)                
 __   _  _   _(/                 
/ (__(/_(_(_(_(_ (_/_ o   o   o  
                .-/              
               (_/               

Ok, what do you want to update?"

read update

if [ $update == "images" ]; then

ftp myhost.com << ftpEOF
	prompt
	cd path/to/public/files
	mput "images/*"
  	bye
ftpEOF
echo "





  ,                                  /)             /) 
   ___   _   _    _  _        __   _(/ _  _/_  _  _(/  
_(_// (_(_(_(_/__(/_/_)_  (_(_/_)_(_(_(_(_(___(/_(_(_  
	           .-/             .-/                         
	          (_/             (_/                          
"

elif [ $update == "css" ]; then

ftp myhost.com << ftpEOF
	prompt
	cd path/to/public/files
	mput "*.css"
  	bye
ftpEOF
echo "





                        /)             /) 
 _  _   _        __   _(/ _  _/_  _  _(/  
(__/_)_/_)_  (_(_/_)_(_(_(_(_(___(/_(_(_  
              .-/                         
             (_/            (_/                          
"

elif [ $update == "all" ]; then

ftp myhost.com << ftpEOF
	prompt
	cd path/to/public/files
	mput "*"
	mput "*/*"
  	bye
ftpEOF
echo "





      /) /)   /) ,  /)                    /)             /) 
 _   // //   //    //  _  _        __   _(/ _  _/_  _  _(/  
(_(_(/_(/_  /(__(_(/__(/_/_)_  (_(_/_)_(_(_(_(_(___(/_(_(_  
           /)                   .-/                         
          (/                         
"

elif [ $update == "php" ]; then

ftp myhost.com << ftpEOF
	prompt
	cd path/to/public/files
	mput "*.php"
  	bye
ftpEOF
echo "





         /)                  /)             /) 
    __  (/  __        __   _(/ _  _/_  _  _(/  
    /_)_/ )_/_)_  (_(_/_)_(_(_(_(_(___(/_(_(_  
 .-/     .-/       .-/                         
(_/     (_/       (_/                       
"

else
	
echo "You entered $update? You can *only* select all, css, images, php. duh..."

fi
