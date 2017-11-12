# smsapi
This is the simple bash software to send sms's trought [**smsapi.pl**](https://www.smsapi.pl/).

### Install/uninstall
**make install** - put requred files into Your system.  
**make uninstall** - remove program from Your system.  

Tips:
- to change 'root' dir, export **DESTDIR=/somewhere/else/**..
- to change program user group, export **GROUP=groupname**, eport empty variable disable managing user group

### How to use
Install.  
Edit smsapi.conf - set Your username and password from [**smsapi.pl**](https://www.smsapi.pl/).  

**Usage: smsapi [-t "to/phone" -m "message" | -h]**  
-t to/phone number  
-m message to send  
-h help  
