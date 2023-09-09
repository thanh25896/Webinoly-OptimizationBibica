# Webinoly PHP 7.4
PHP v7.4.33, MariaDB v10.11.4, Nginx v1.24.0
1. Login root
2. Update IOS and reboot the system
```shell
sudo apt update && sudo apt upgrade -y && sudo reboot
```
3. Install Webinoly PHP 7.4
```shell
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Webinoly-Optimization/master/webinoly74.sh -O webinoly_mod.sh && sudo chmod +x webinoly_mod.sh && sudo ./webinoly_mod.sh
```

# Setting
PHP
```shell
max_execution_time = 6000
max_input_time = 6000
max_input_vars = 5000
memory_limit = 256
upload_max_filesize = 1000000M
max_file_uploads = 6000
post_max_size = 1000000M
disable_functions = 
[opcache]
opcache.enable=1
opcache.enable_cli=1
opcache.memory_consumption=128
opcache.interned_strings_buffer=16
opcache.max_accelerated_files=100000
opcache.max_wasted_percentage=10
```
Not installed
```shell
Let’s Encrypt
Duply & Duplicity (Backups)
Postfix
Redis
Memcached
phpMyAdmin
```
Small customization:
```shell
Fixed swap file 2GB
Change to Vietnam time Ho Chi Minh
Turn off HTTP Authentication
```
Delete Headers
```shell
Referrer Policy Header successfully disabled!
HSTS Header successfully disabled!
Cache Control Header successfully disabled!
CSP Header successfully disabled!
Permissions Policy Header successfully disabled!
X-Robots-Tag Header successfully disabled!
X-XSS-Protection Header successfully disabled!
X-Content-Type-Options Header successfully disabled!
X-Frame-Options Header successfully disabled!
```
Turn off the firewall on Ubuntu

# Oracle VM.Standard.A1.Flex 4 OCPU 24 GB RAM
PHP v7.4.33, MariaDB v10.11.4, Nginx v1.24.0

<ul>
 	<li>OPcache 1GB</li>
 	<li>innodb_buffer_pool_size = 17GB</li>
  	<li>memory_limit = 1GB</li>
  	<li>OPcache = 1GB</li>
</ul>

1. Login root
2. Update IOS and reboot the system
```shell
sudo apt update && sudo apt upgrade -y && sudo reboot
```
3. Install Webinoly PHP 7.4
```shell
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Webinoly-Optimization/master/webinoly_vm_standard_a1_flex.sh -O webinoly_mod.sh && sudo chmod +x webinoly_mod.sh && sudo ./webinoly_mod.sh
```
