Sinatra Template (Omikuji)
==========================
Web App Template.

* Ruby 1.8.7+
* Sinatra 1.3+
* Haml
* sass(scss)
* jQuery
* MySQL5.1+ / DataMapper1.2+


Clone
-----

    % git clone git://github.com/shokai/sinatra-template.git
    % cd sinatra-template


Install Dependencies
--------------------

    % gem install bundler foreman
    % bundle install --path .bundle


Config
------

    % cp sample.config.yml config.yml

edit it.


Setup Database
--------------

    % mysql -u your_name -p
    mysql> create database sinatra_template
    % ruby bin/db_migrate.rb


Run
---

    % foreman start

open [http://localhost:8080](http://localhost:8080)


Deploy
------
use Passenger with "config.ru"


Console
-------

    % ruby -Ku bin/console
    > Omikuji.find_by_result(/吉/).count  ## => 24
