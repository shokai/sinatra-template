Sinatra Template (Omikuji)
==========================
Web App Template.

* Ruby 1.8.7+
* Sinatra 1.3+
* Haml
* sass(scss)
* jQuery


Want to Use DB?
---------------
if you want to use MongoDB or MySQL, checkout branch.

* https://github.com/shokai/sinatra-template/tree/mongoid
* https://github.com/shokai/sinatra-template/tree/dm-mysql


Clone
-----

    % git clone git://github.com/shokai/sinatra-template.git
    % cd sinatra-template


Install Dependencies
--------------------

    % gem install bundler foreman
    % bundle install --path vendor/bundle


Config
------

    % cp sample.config.yml config.yml

edit it.


Run
---

    % foreman start

open http://localhost:5000


Deploy
------
use Passenger with "config.ru"
