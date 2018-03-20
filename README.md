# techsisters-rails-forum-demo

# Setup

## OS X

http://sourabhbajaj.com/mac-setup/Vagrant/README.html

## Windows

https://www.sitepoint.com/getting-started-vagrant-windows/

## Linux

https://www.godaddy.com/garage/install-vagrant-ubuntu-14-04/

# Coding

rails new techsisters_forum

add devise to Gemfile

add twitter-bootstrap-rails to Gemfile

bundle

rails s

http://localhost:3000

rails g devise:install

routes.rb -> root 'home#index'

rails g controller Home index

rails g devise user

rails db:migrate

rails g devise:controllers users

add bootstrap to assets/javascripts/application.js and assets/stylesheets/application.scss

add navigation bar to layouts/application.html.erb

add signup and singin to navigation bar

add container around yield

add notice and alert elements

rails g devise:views users

restart server if running

beutify signup view

add username and logout to layouts/application.html.erb based on user_signed_in?

rails g scaffold Post user:belongs_to title:string content:string

rails db:migrate

add all posts link to to views/layouts/application.html.erb is user_logged_in?

rails g scaffold Comment post:belongs_to user:belongs_to content:string

rails db:migrate

Add new comment link to posts

move comments under posts in routes

move new comment inside post show view
