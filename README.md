Sinatra Template (Omikuji)
==========================
Web App Template.

* Ruby 1.8.7+
* Sinatra 1.3+
* Haml
* sass(scss)
* jQuery


Clone
-----

    % git clone git://github.com/shokai/sinatra-template.git
    % cd sinatra-template


Want to Use DB?
---------------
if you want to use MongoDB or MySQL, checkout branch.

    % git checkout mongoid
    % git pull origin mongoid

    % git checkout dm-mysql
    % git pull origin dm-mysql


Install Dependencies
--------------------

    % gem install bundler
    % bundle install --path .bundle


Config
------

    % cp sample.config.yml config.yml

edit it.


Run
---

    % ruby development.ru

open [http://localhost:8080](http://localhost:8080)


Deploy
------
use Passenger with "config.ru"

