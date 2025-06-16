git init
sudo yum update -y
sudo yum install git -y
git --version
git init
git pull
git remote add origin https://github.com/23f-3004447/Cloud-Migration-Project.git
git pull origin main --allow-unrelated-histories
git branch --set-upstream-to=origin/main
git remote add origin https://github.com/23f-3004447/Cloud-Migration-Project.git
ls
git pull
ls
git clone https://github.com/your-org/kimai.git
git clone https://github.com/kimai/kimai.git
ls
git pul
git pull
ls
cd kimai
ls
cd ..
git push
git branch -M main
git push -u origin main
git push
ls
[ec2-user@ip-172-31-35-246 ~]$ git branch -M main
[ec2-user@ip-172-31-35-246 ~]$ git push -u origin main
Username for 'https://github.com': 23f-3004447
Password for 'https://23f-3004447@github.com':
branch 'main' set up to track 'origin/main'.
Everything up-to-date
[ec2-user@ip-172-31-35-246 ~]$ git push
Username for 'https://github.com': 23f-3004447
Password for 'https://23f-3004447@github.com':
Everything up-to-date
[ec2-user@ip-172-31-35-246 ~]$ ls
README.md  kimai
[ec2-u
cd kimai
ls -a
cd ~
git add kimai
git commit -m "Added Kimai app files"
git push
composer install --no-dev
sudo amazon-linux-extras enable php8.0
sudo yum update -y
sudo amazon-linux-extras enable php8.0
sudo yum install -y php php-mbstring php-xml php-pdo php-mysqlnd nginx mariadb-server git composer unzip
sudo systemctl enable nginx && sudo systemctl start nginx
sudo systemctl enable mariadb && sudo systemctl start mariadb
sudo dnf update -y
sudo dnf install -y php php-mbstring php-xml php-pdo php-mysqlnd php-cli php-fpm nginx git unzip mariadb105 composer
sudo systemctl enable --now nginx
sudo systemctl enable --now php-fpm
sudo systemctl enable --now mariadb
sudo systemctl enable --now mariadb@105
sudo dnf install -y mariadb105
sudo systemctl enable --now mariadb
sudo dnf install -y mariadb-server
sudo systemctl enable --now mariadb
systemctl list-units --type=service | grep -i maria
[ec2-user@ip-172-31-35-246 ~]$ systemctl list-units --type=service | grep -i maria
[ec2-user@ip-172-31-35-246 ~]$
rpm -ql mariadb105 | grep mysql.server
sudo dnf clean all
sudo dnf install -y MariaDB-server MariaDB-client
sudo dnf remove -y mariadb105
sudo dnf install -y MariaDB-server MariaDB-client
rpm -qa | grep -i maria
rpm -qa | grep -i mariasudo tee /etc/yum.repos.d/MariaDB.repo > /dev/null <<EOF
[mariadb]
name = MariaDB
baseurl = https://downloads.mariadb.com/MariaDB/mariadb-10.5/yum/centos8-amd64
gpgkey=https://downloads.mariadb.com/MariaDB/MariaDB-Server-GPG-KEY
gpgcheck=1
EOF

pgcheck=1
EOF
grep: tee: No such file or directory
grep: /etc/yum.repos.d/MariaDB.repo: No such file or directory
[ec2-user@ip-172-31-35-246 ~]$
sudo tee /etc/yum.repos.d/MariaDB.repo > /dev/null <<EOF
[mariadb]
name = MariaDB
baseurl = https://downloads.mariadb.com/MariaDB/mariadb-10.5/yum/centos8-amd64
gpgkey=https://downloads.mariadb.com/MariaDB/MariaDB-Server-GPG-KEY
gpgcheck=1
EOF

sudo dnf clean all
sudo dnf install -y MariaDB-server MariaDB-client
sudo systemctl enable --now mariadb
sudo tee /etc/yum.repos.d/MariaDB.repo > /dev/null <<EOF
[mariadb]
name = MariaDB
baseurl = https://downloads.mariadb.com/MariaDB/mariadb-10.5/yum/rhel9-amd64
gpgkey=https://downloads.mariadb.com/MariaDB/MariaDB-Server-GPG-KEY
gpgcheck=1
EOF

sudo dnf clean all
sudo dnf install -y MariaDB-server MariaDB-client
Error: Unable to find a match: MariaDB-server MariaDB-client
[ec2-user@ip-172-31-35-246 ~]$
[ec2-user@ip-172-31-35-246 ~]$ sudo systemctl enable --now mariadb
Failed to enable unit: Unit file mariadb.service does not exist.
[ec2-user@ip-172-31-35-246 ~]$ sudo tee /etc/yum.repos.d/MariaDB.repo > /dev/null <<EOF
[mariadb]
name = MariaDB
baseurl = https://downloads.mariadb.com/MariaDB/mariadb-10.5/yum/rhel9-amd64
gpgkey=https://downloads.mariadb.com/MariaDB/MariaDB-Server-GPG-KEY
gpgcheck=1
EOF

[ec2-user@ip-172-31-35-246 ~]$ sudo dnf clean all
17 files removed
[ec2-user@ip-172-31-35-246 ~]$ sudo dnf install -y MariaDB-server MariaDB-client
Amazon Linux 2023 repository                                                                          64 MB/s |  39 MB     00:00
Amazon Linux 2023 Kernel Livepatch repository                                                        133 kB/s |  17 kB     00:00
MariaDB                                                                                              0.0  B/s |   0  B     00:00
Errors during downloading metadata for repository 'mariadb':
  - Status code: 404 for https://downloads.mariadb.com/MariaDB/mariadb-10.5/yum/rhel9-amd64/repodata/repomd.xml (IP: 104.18.135.24)
Error: Failed to download metadata for repo 'mariadb': Cannot download repomd.xml: Cannot download repodata/repomd.xml: All mirrors were tried
Ignoring repositories: mariadb
No match for argument: MariaDB-server
No match for argument: MariaDB-client
Error: Unable to find a match: MariaDB-server MariaDB-client
[ec2-user@ip-172-31-35-246 ~]$ sudo dnf install -y MariaDB-server MariaDB-client
MariaDB                                                                                              0.0  B/s |   0  B     00:00
Errors during downloading metadata for repository 'mariadb':
  - Status code: 404 for https://downloads.mariadb.com/MariaDB/mariadb-10.5/yum/rhel9-amd64/repodata/repomd.xml (IP: 104.17.191.14)
Error: Failed to download metadata for repo 'mariadb': Cannot download repomd.xml: Cannot download repodata/repomd.xml: All mirrors were tried
Ignoring repositories: mariadb
Last metadata expiration check: 0:00:05 ago on Thu Jun 12 07:15:17 2025.
No match for argument: MariaDB-server
No match for argument: MariaDB-client
Error: Unable to find a match: MariaDB-server MariaDB-client
[ec2-user@ip-172-31-35-246 ~]$
Error: Unable to find a match: MariaDB-server MariaDB-client
[ec2-user@ip-172-31-35-246 ~]$
[ec2-user@ip-172-31-35-246 ~]$ sudo systemctl enable --now mariadb
Failed to enable unit: Unit file mariadb.service does not exist.
[ec2-user@ip-172-31-35-246 ~]$ sudo tee /etc/yum.repos.d/MariaDB.repo > /dev/null <<EOF
[mariadb]
name = MariaDB
baseurl = https://downloads.mariadb.com/MariaDB/mariadb-10.5/yum/rhel9-amd64
gpgkey=https://downloads.mariadb.com/MariaDB/MariaDB-Server-GPG-KEY
gpgcheck=1
EOF

[ec2-user@ip-172-31-35-246 ~]$ sudo dnf clean all
17 files removed
[ec2-user@ip-172-31-35-246 ~]$ sudo dnf install -y MariaDB-server MariaDB-client
Amazon Linux 2023 repository                                                                          64 MB/s |  39 MB     00:00
Amazon Linux 2023 Kernel Livepatch repository                                                        133 kB/s |  17 kB     00:00
MariaDB                                                                                              0.0  B/s |   0  B     00:00
Errors during downloading metadata for repository 'mariadb':
  - Status code: 404 for https://downloads.mariadb.com/MariaDB/mariadb-10.5/yum/rhel9-amd64/repodata/repomd.xml (IP: 104.18.135.24)
Error: Failed to download metadata for repo 'mariadb': Cannot download repomd.xml: Cannot download repodata/repomd.xml: All mirrors were tried
Ignoring repositories: mariadb
No match for argument: MariaDB-server
No match for argument: MariaDB-client
Error: Unable to find a match: MariaDB-server MariaDB-client
[ec2-user@ip-172-31-35-246 ~]$ sudo dnf install -y MariaDB-server MariaDB-client
MariaDB                                                                                              0.0  B/s |   0  B     00:00
Errors during downloading metadata for repository 'mariadb':
  - Status code: 404 for https://downloads.mariadb.com/MariaDB/mariadb-10.5/yum/rhel9-amd64/repodata/repomd.xml (IP: 104.17.191.14)
Error: Failed to download metadata for repo 'mariadb': Cannot download repomd.xml: Cannot download repodata/repomd.xml: All mirrors were tried
Ignoring repositories: mariadb
Last metadata expiration check: 0:00:05 ago on Thu Jun 12 07:15:17 2025.
No match for argument: MariaDB-server
No match for argument: MariaDB-client
Error: Unable to find a match: MariaDB-server MariaDB-client
[ec2-user@ip-172-31-35-246 ~]$
sudo dnf search mariadb
sudo dnf install -y mariadb104 mariadb104-server
sudo rm -f /etc/yum.repos.d/MariaDB.repo
sudo dnf clean all
sudo dnf list mariadb*
sudo dnf install -y mariadb105-server
sudo systemctl enable --now mariadb
sudo systemctl enable --now mariadb@105
sudo systemctl enable --now mariadb@1011
curl http://localhost:5000
ls
sudo systemctl status mariadb
mysql --version
mysqladmin ping
sudo mysql -u root
mysql -u root -p
mysqladmin -u root -p ping
sudo amazon-linux-extras enable php8.2
sudo dnf install php82 php82-php php82-php-cli php82-php-mbstring php82-php-mysqlnd
sudo alternatives --install /usr/bin/php php /usr/bin/php82 1
cat /etc/os-release
sudo dnf module list php
sudo dnf install -y https://rpms.remirepo.net/enterprise/remi-release-9.rpm
sudo dnf module enable php:remi-8.2 -y
sudo dnf install -y php php-cli php-mbstring php-mysqlnd php-fpm php-gd
php -v
echo "<?php phpinfo(); ?>" > test.php
php -S 0.0.0.0:8080 test.php
sudo amazon-linux-extras enable php8.2
php -S 0.0.0.0:8080
mv test.php index.php
php -S 0.0.0.0:8080
sudo amazon-linux-extras enable php8.2
cat /etc/os-release
php -v
sudo amazon-linux-extras enable php8.2
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo dnf install php-cli php-common php-mbstring php-pdo php-mysqlnd php-xml php-curl unzip git
sudo amazon-linux-extras enable php8.2
sudo yum clean metadata
sudo yum install -y php php-fpm php-mysqlnd php-intl php-gd php-curl php-xml php-mbstring php-opcache php-cli unzip git
cd ~
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
sudo mv composer.phar /usr/local/bin/composer
composer --version
cd /var/www
sudo git clone -b 2.0 https://github.com/kevinpapst/kimai2.git kimai
cd kimai
ls
cd /var/www
sudo git clone https://github.com/kevinpapst/kimai2.git kimai
cd kimai
sudo composer install --no-dev --optimize-autoloader
sudo nano /etc/php.ini
sudo composer install --no-dev --optimize-autoloader
sudo chown -R apache:apache /var/www/kimai
sudo chmod -R 775 /var/www/kimai/var
sudo mysql -u root -p
cd /var/www/kimai
cp .env.dist .env
sudo cp .env.dist .env
sudo nano .env
cd /var/www/kimai
sudo -u apache bin/console kimai:install -n
cd /var/www/kimai
sudo -u apache bin/console kimai:install -n
sudo chown -R apache:apache /var/www/kimai
sudo chmod -R 755 /var/www/kimai/var
sudo nano /etc/nginx/conf.d/kimai.conf
sudo systemctl restart nginx
sudo systemctl restart php-fpm
php --version
ps aux | grep php-fpm
sudo find /run -name '*.sock'
sudo nano /etc/nginx/conf.d/kimai.conf
sudo systemctl restart php-fpm
sudo systemctl restart nginx
sudo nano /etc/nginx/conf.d/kimai.conf
sudo systemctl restart nginx
ls /home/ec2-user/kimai/public/index.php
root /var/www/kimai/public;
sudo nano /etc/nginx/conf.d/kimai.conf
sudo nginx -t
sudo systemctl reload nginx
sudo nano /etc/nginx/conf.d/kimai.conf
sudo nginx -t
sudo systemctl reload nginx
sudo nginx -t
cat /etc/nginx/conf.d/kimai.conf
ls /home/ec2-user/kimai/public
cat /etc/nginx/conf.d/kimai.conf
cat /etc/nginx/nginx.conf
sudo mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.disabled
sudo nano /etc/nginx/nginx.conf
sudo systemctl reload nginx
sudo nano /etc/nginx/nginx.conf
cat /etc/nginx/conf.d/kimai.conf
ls /etc/nginx/conf.d/
sudo nginx -t
sudo systemctl reload nginx
sudo nano /etc/nginx/conf.d/kimai.conf
sudo systemctl restart php-fpm
sudo systemctl reload nginx
sudo grep "^listen" /etc/php-fpm.d/www.conf
ls -l /run/php-fpm/www.sock
sudo nano /etc/php-fpm.d/www.conf
grep -E "^(user|group|listen|listen.acl_users)" /etc/php-fpm.d/www.conf
sudo sed -i 's/^user = apache/user = nginx/' /etc/php-fpm.d/www.conf
sudo sed -i 's/^group = apache/group = nginx/' /etc/php-fpm.d/www.conf
grep -E "^(user|group|listen|listen.acl_users)" /etc/php-fpm.d/www.conf
sudo systemctl restart php-fpm
sudo systemctl restart nginx
sudo systemctl status php-fpm
ls -l /run/php-fpm/www.sock
sudo systemctl restart php-fpm
sudo systemctl restart nginx
sudo journalctl -xeu php-fpm
ls -l /run/php-fpm/www.sock
sudo chown -R apache:apache /run/php-fpm
sudo chmod -R 770 /run/php-fpm
sudo systemctl restart php-fpm
sudo systemctl restart nginx
ls -l /run/php-fpm/www.sock
[ec2-user@ip-172-31-35-246 kimai]$ ls -l /run/php-fpm/www.sock
srw-rw----+ 1 root root 0 Jun 15 12:03 /run/php-fpm/www.sock
[ec2-user@ip-172-31-35-246 kimai]$
sudo chown apache:apache /run/php-fpm/www.sock
sudo systemctl restart php-fpm
sudo systemctl restart nginx
ls -l /run/php-fpm/www.sock
sudo chown apache:apache /run/php-fpm/www.sock
sudo systemctl restart php-fpm
sudo systemctl restart nginx
sudo tail -n 50 /var/log/nginx/kimai_error.log
sudo tail -n 50 /var/log/php-fpm/error.log
sudo systemctl status nginx
curl http://localhost:5000
gunicorn -w 4 -b 0.0.0.0:5000 app:app
pip3 install gunicorn
sudo systemctl status nginx
php -v
sudo systemctl status php-fpm
sudo nginx -t
sudo systemctl reload nginx
cat /etc/nginx/nginx.conf | grep include
ls /etc/nginx/conf.d/
sudo nano /etc/nginx/conf.d/kimai.conf
sudo netstat -tulpn | grep :9000
sudo ss -tulpn | grep :9000
sudo nano /etc/nginx/conf.d/default.conf
sudo -u www-data php bin/console kimai:version
php bin/console kimai:version
php -S 0.0.0.0:9000 -t public/
sudo ss -tulpn | grep :9000
php -S 0.0.0.0:9000 -t public/
nohup php -S 0.0.0.0:9000 -t public/ > kimai.log 2>&1 &
nohup php -S 0.0.0.0:9000 -t public/ > ~/kimai.log 2>&1 &
sudo ss -tulpn | grep :9000
ps aux | grep php
kill -9 267903
sudo nohup php -S 0.0.0.0:80 -t public/ > ~/kimai.log 2>&1 &
sudo ss -tulpn | grep :80
sudo nano /etc/nginx/conf.d/kimai.conf
sudo systemctl restart php-fpm
sudo systemctl restart nginx
cat /var/log/nginx/kimai_error.log
sudo chmod -R 755 /home/ec2-user/kimai
sudo nano /etc/nginx/conf.d/kimai.conf
sudo systemctl restart php-fpm
sudo systemctl restart nginx
curl -I http://localhost
sudo nano /etc/nginx/conf.d/kimai.conf
sudo chmod o+x /home/ec2-user
sudo grep '^\[' /etc/php-fpm.d/*.conf
sudo tail -n 50 /var/log/nginx/kimai_error.log
echo "<?php phpinfo(); ?>" | sudo tee /home/ec2-user/kimai/public/test.php
sudo chmod o+x /home/ec2-user /home/ec2-user/kimai /home/ec2-user/kimai/public
sudo chown -R ec2-user:nginx /home/ec2-user/kimai
sudo chmod -R 750 /home/ec2-user/kimai
sudo systemctl reload nginx
sudo systemctl restart php-fpm
udo tail -n 30 /var/log/nginx/kimai_error.log
Sudo tail -n 30 /var/log/nginx/kimai_error.log
sudo tail -n 30 /var/log/nginx/kimai_error.log
sudo tail -n 30 /var/log/php-fpm/error.log
sudo chmod o+x /home/ec2-user
sudo chmod o+x /home/ec2-user/kimai/public
sudo chown -R ec2-user:nginx /home/ec2-user/kimai
sudo chmod -R 750 /home/ec2-user/kimai
sudo grep -i "listen" /etc/php-fpm.d/www.conf
sudo nano /etc/nginx/conf.d/default.conf
sudo nano /etc/nginx/conf.d/kimai.conf
sudo systemctl restart php-fpm
sudo systemctl restart nginx
sudo nano /etc/nginx/conf.d/default.conf
sudo nano /etc/nginx/conf.d/kimai.conf
sudo nano /etc/nginx/conf.d/default.conf
sudo nano /etc/nginx/conf.d/kimai.conf
sudo nginx -t
sudo systemctl restart nginx
sudo systemctl status php-fpm
sudo chmod -R 755 /home/ec2-user/kimai
sudo chown -R ec2-user:nginx /home/ec2-user/kimai
sudo chmod +x /home/ec2-user
sudo tail -n 50 /var/log/nginx/kimai_error.log
sudo tail -n 50 /var/log/php-fpm/error.log
sudo systemctl restart php-fpm
sudo systemctl restart nginx
sudo yum install composer -y
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
[ec2-user@ip-172-31-35-246 kimai]$ sudo yum install composer -y
Last metadata expiration check: 1:54:56 ago on Sun Jun 15 10:51:28 2025.
Package composer-2.8.8-1.amzn2023.0.1.noarch is already installed.
Dependencies resolved.
Nothing to do.
Complete!
[ec2-user@ip-172-31-35-246 kimai]$ php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
PHP Warning:  copy(composer-setup.php): Failed to open stream: Permission denied in Command line code on line 1
[ec2-user@ip-172-31-35-246 kimai]$
composer install --no-dev --optimize-autoloader
[ec2-user@ip-172-31-35-246 kimai]$ composer install --no-dev --optimize-autoloader
The repository at "/var/www/kimai" does not have the correct ownership and git refuses to use it:
fatal: detected dubious ownership in repository at '/var/www/kimai'
To add an exception for this directory, call:
        git config --global --add safe.directory /var/www/kimai
Installing dependencies from lock file
Verifying lock file contents can be installed on current platform.
Nothing to install, update or remove
In Filesystem.php line 913:
  file_put_contents(/var/www/kimai/vendor/composer/installed.php): Failed to open stream: Permission denied
install [--prefer-source] [--prefer-dist] [--prefer-install PREFER-INSTALL] [--dry-run] [--download-only] [--dev] [--no-suggest] [--no-dev] [--no-autoloader] [--no-progress] [--no-install] [--audit] [--audit-format AUDIT-FORMAT] [-v|vv|vvv|--verbose] [-o|--optimize-autoloader] [-a|--classmap-authoritative] [--apcu-autoloader] [--apcu-autoloader-prefix APCU-AUTOLOADER-PREFIX] [--ignore-platform-req IGNORE-PLATFORM-REQ] [--ignore-platform-reqs] [--] [<packages>...]
[ec2-user@ip-172-31-35-246 kimai]$
sudo chown -R ec2-user:ec2-user /var/www/kimai
sudo chown -R ec2-user:ec2-user /home/ec2-user/kimai
cd /home/ec2-user/kimai
composer install --no-dev --optimize-autoloader
git config --global --add safe.directory /home/ec2-user/kimai
sudo systemctl restart php-fpm
sudo systemctl restart nginx
sudo tail -n 30 /var/log/nginx/kimai_error.log
cd /home/ec2-user/kimai
composer install --no-dev --optimize-autoloader
[ec2-user@ip-172-31-35-246 kimai]$ cd /home/ec2-user/kimai
[ec2-user@ip-172-31-35-246 kimai]$ composer install --no-dev --optimize-autoloader
Installing dependencies from lock file
Verifying lock file contents can be installed on current platform.
Nothing to install, update or remove
Package behat/transliterator is abandoned, you should avoid using it. No replacement was suggested.
Generating optimized autoload files
94 packages you are using are looking for funding.
Use the `composer fund` command to find out more!
Run composer recipes at any time to see the status of your Symfony recipes.
Executing script cache:clear [OK]
Executing script assets:install [OK]
[ec2-user@ip-172-31-35-246 kimai]$
sudo systemctl restart php-fpm
sudo systemctl restart nginx
sudo chown -R nginx:nginx /home/ec2-user/kimai/var
sudo chown -R nginx:nginx /home/ec2-user/kimai/public
sudo systemctl restart php-fpm
sudo systemctl restart nginx
500
Something is wrong
A critical error occurred, please try again. You may have found a software problem, please contact your administrator if the problem persists.
cd /home/ec2-user/kimai
sudo chown -R nginx:nginx var public
sudo chmod -R 775 var public
sudo chown -R nginx:nginx /home/ec2-user/kimai/var /home/ec2-user/kimai/public
nano .env
php bin/console cache:clear --env=prod
php bin/console cache:warmup --env=prod
sudo chown -R ec2-user:nginx /home/ec2-user/kimai/var
sudo chmod -R 775 /home/ec2-user/kimai/var
php bin/console cache:clear --env=prod
php bin/console cache:warmup --env=prod
sudo systemctl restart php-fpm
sudo systemctl restart nginx
tail -n 30 var/log/prod.log
