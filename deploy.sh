#!/bin/bash -eux

rake assets:precompile RAILS_ENV=production
pid=`ps -ef | grep unicorn | grep -v grep | head -n1 | awk '{print $2}'`
kill -9 $pid
unicorn_rails -c /var/www/rails/blog/config/unicorn.conf.rb -D -E production
sudo service nginx restart
