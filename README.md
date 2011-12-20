Sinatra Template (Omikuji)
==========================
Web App Template.

* Ruby 1.8.7+
* Sinatra 1.3+
* Haml
* sass(scss)
* coffee-script
* jQuery


Clone
-----

    % git clone git://github.com/shokai/sinatra-template.git
    % cd sinatra-template


Want to Use DB?
---------------
if you want to use MongoDB, checkout branch.

    % git branch
    % git checkout mongoid


Install Dependencies
--------------------

    % brew install coffee-script
    % gem install bundler
    % bundle install


Config
------

    % cp sample.config.yaml config.yaml

edit it.


Run
---

    % ruby development.ru

open [http://localhost:8080](http://localhost:8080)


Deploy
------
use Passenger with "config.ru"

