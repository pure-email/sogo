# Sogo compose

This is a basic wrap of Sogo 5 (https://sogo.nu/) latest build from free repo. 

Lot's of *ToDo's* here

## Content
* Sogo
* Nginx
* Memcache
* MySQL schema file (original documentation by the date this repo is originated does not contain correct sql schema)

### External Requirements
* External MySql deployment
* SSL termination

### Environment variables (.env)
* WCOUNT - number of workers per container
* HOST - <ip>:<port> for sogo app (example 0.0.0.0:20000)
* REPLICAS_APP - number of sogo_app containers to start

### ToDo
* move Sogo sensitive config params to secrets/env file
* URI path change possibility
* Replace MD5 used while testing to more secure algorithm

### Tested
* Authorization
* Calendar operations
* Address book

### Not tested
* ActiveSync
* IOS integration