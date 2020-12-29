#Sogo compose

This is a basic wrap of Sogo 5 (https://sogo.nu/) latest build from free repo. 

Lot's of *ToDo's* here

##Content
* Sogo
* Nginx
* Memcache

###External Requirements
* External MySql deployment
* SSL termination

###Environment variables (.env)
* WCOUNT=10
* HOST=0.0.0.0:20000

###ToDo
* move Sogo sensitive config params to secrets/env file
* configure logo replacements
* URI path change possibility

###Tested
* Authorization
* Calendar operations
* Address book

###Not tested
* ActiveSync
* IOS integration