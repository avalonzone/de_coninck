<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About This project

We assume that you have setup a suitable environnement to run the LARAVEL 10 applications.
You must be familliar with Linux, APT, Apache, PHP, PHP Artisan, DNS, Mysql/MariaDB, SSH, SSL if you plan host this on a dedicated server.

### The following setup has been created to host the project

- Hardware : Raspberry Pi 4 (4 go)
- OS : Raspbian/Debian 11 (bullseye)
- Primary domain : avalon-zone.be
- Webserver : Apache 2.4.56
- PHP : PHP 8.2.9
- LARAVEL : LARAVEL 10.23.0
- SQL Server : MariaDB 10.5.19
- Firewall : iptables (Open port : 22 (SSH), 443 (HTTPS), 25563-25564 (VSCODE Server Cedric), 25565-25566 (VSCODE Server Philip)
- Active Protection : Fail2ban
- Console Access : SSH, Key exchange only, NO password authentication
- HTTPS/SSL: 90 days free certificates (ZeroSSL) for these subdomain : cedric.avalon-zone.be, philip.avalon-zone.be

For best results, a similar setup should be set in place to install the project. Of course you might also run this project within a local instance of the Artisan Server.

### Prerequisites

- An Apache web server configured with the required modules
- PHP 8.1+ must be installed and configured with all Laravel prerequisites
- A database engine like MySQL or MariaDB
- Composer package management installed
- Git installed and configured

### Installation

Create a database to host the tables requiured by the applications and give acces with enoug privilege to a user. The database name, username and password will be used later while configuring the application environnement file.

Download/clone this project into the root of your web server

    git clone https://github.com/avalonzone/de_coninck.git

Duplicate .env.example and rename it to .env

Create the following entries in the .env file, these credential will be used by the database seeder to create the admin user.

    APP_USR="<admin_user>"
    APP_PWD="<admin_password>"

Update the following entries in the .enc file

    APP_NAME=<Choose_a_name>
    DB_DATABASE=<database_name>
    DB_USERNAME=<database_user_name>
    DB_PASSWORD=<database_user_password>

Navigate into the project directory with the terminal

Create a symbolink link to give acces to the content of storage from the public application folder

    php artisan storage:link

Create application tables and add content

    php artisan migrate:fresh --seed

If running the app under Apache do not forget to give the right to the user running the web server instance so he has write permission to the storage/ and bootstrap/cache folders.



### Test of the existing demo instance (https://philip.avalon-zone.be)

Test the application functionnalities as a guest.

Test the application functionnalities as an administrator.
- login : <sent_by_mail>
- password : <sent_by_mail>







## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
