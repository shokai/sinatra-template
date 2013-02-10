Sinatra Template (Omikuji)
==========================
Web App Template.

* Ruby 1.8.7+
* Sinatra 1.3+
* Haml
* sass(scss)
* jQuery
* MongoDB2.0+ / Mongoid2.4.x


Clone
-----

    % git clone git://github.com/shokai/sinatra-template.git
    % cd sinatra-template
    % git branch -a
    % git checkout -b mongoid remotes/origin/mongoid


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

=> http://localhost:5000


Deploy
------
use Passenger with "config.ru"


Console
-------

    % ruby -Ku bin/console.rb
    > Omikuji.find_by_result(/吉/).count  ## => 24
