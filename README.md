# techsisters-rails-forum-demo

# Setup

## OS X

http://sourabhbajaj.com/mac-setup/Vagrant/README.html

## Windows

https://www.sitepoint.com/getting-started-vagrant-windows/

## Linux

https://www.godaddy.com/garage/install-vagrant-ubuntu-14-04/

# Coding

vagrant plugin install vagrant-vbguest
vagrant up
vagrant ssh

cd /vagrant/

rails new techsisters_forum

add devise to Gemfile

add twitter-bootstrap-rails to Gemfile

bundle

rails s

http://localhost:3000

rails generate scaffold User username:string

rails db:migrate

routes.rb -> root 'welcome#index'

rails g controller Welcome index

bundle

rails g devise:install

rails g devise:controllers

rails g devise:views

rails g devise user

add username field to registrations/new

add login/logout links to views/layouts/application.html.erb based on user_logged_in?

rails g scaffold Post user:belongs_to title:string content:string

rails db:migrate

add all posts link to to views/layouts/application.html.erb is user_logged_in?

rails g scaffold Comment post:belongs_to user:belongs_to content:string

rails db:migrate

Add new comment link to posts

move comments under posts in routes

move new comment inside post show view

...

vagrant halt
