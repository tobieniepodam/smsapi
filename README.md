# smsapi
This is the simple bash software to send sms's trough [**smsapi.pl**](https://www.smsapi.pl/).

### Install/uninstall
**make install** - put requred files into Your system.  
**make uninstall** - remove program from Your system.  

Tip: to change 'root' dir, export **DESTDIR=/somewhere/else/**..

### How to use
Install.  
Edit smsapi.conf - set Your username and password from [**smsapi.pl**](https://www.smsapi.pl/).  
Gain (or not) acces to other users by smsapi-regroup -g group.  

**Usage: smsapi [-t "to/phone" -m "message" | -h]**  
-t to/phone number  
-m message to send  
-h help  
