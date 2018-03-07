# techsisters-rails-forum-demo

# Setup

brew cask install virtualbox

brew cask install vagrant

vagrant up
vagrant ssh

# Coding

Techsisters Forum App

rails new techsisters_forum

bundle

rails s

http://localhost:3000

rails generate scaffold User username:string

rails db:migrate

routes.rb -> root 'welcome#index'

rails g controller Welcome index

add devise to Gemfile

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
