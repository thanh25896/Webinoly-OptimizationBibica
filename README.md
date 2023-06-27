# Webinoly PHP 7.4
PHP v7.4.33, MariaDB v10.11.4, Nginx v1.24.0
1. Login root
2. Cập nhập OS và khởi động lại hệ thống
```shell
sudo apt update && sudo apt upgrade -y && sudo reboot
```
3. Cài đặt Webinoly PHP 7.4
```shell
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Webinoly-Optimization/master/webinoly74.sh -O webinoly_mod.sh && sudo chmod +x webinoly_mod.sh && sudo ./webinoly_mod.sh
```
# Webinoly PHP 8.2
PHP 8.2.7, MariaDB v10.11.4, Nginx v1.24.0
1. Login root
2. Cập nhập OS và khởi động lại hệ thống
```shell
sudo apt update && sudo apt upgrade -y && sudo reboot
```
3. Cài đặt Webinoly PHP 8.2
```shell
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Webinoly-Optimization/master/webinoly82.sh -O webinoly_mod.sh && sudo chmod +x webinoly_mod.sh && sudo ./webinoly_mod.sh
```
# Cấu hình
PHP
```shell
max_execution_time = 6000
max_input_time = 6000
max_input_vars = 5000
memory_limit = 512M
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
Không cài đặt
```shell
Let’s Encrypt
Duply & Duplicity (Backups)
Postfix
Redis
Memcached
phpMyAdmin
```
Tùy chỉnh nhỏ:
```shell
File swap cố định 2GB
Chuyển về giờ Việt Nam Hồ Chí Minh
Tắt HTTP Authentication
```
Xóa các Header
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
Tắt firewall trên Ubuntu
