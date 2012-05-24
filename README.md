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
    % git checkout -b dm-mysql
    % git pull origin dm-mysql


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

    % ruby -Ku bin/console.rb
    > Omikuji.find_by_result(/吉/).count  ## => 24


LICENSE
=======
(The MIT License)

Copyright (c) 2012 Sho Hashimoto

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
