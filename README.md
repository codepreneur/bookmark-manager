Bookmark Manager
================

Week 6 project @ Makers Academy - the creation of a bookmark manager (similar to pineapple.io or delicious.com in spirit). The goal was to expose us to the following aspects of web development:

- Sinatra
- Integration testing: Capybara
- Relational databases
- Security considerations
- HTML / CSS


Specifications
--------------

A bookmark manager is a website to maintain a collection of links, organised by tags. You can use it to save a webpage you found useful. You can also add tags to the bookmarks you saved to find them later. You can browse links other users have added.

The website will have the following options:

- Show a list of links from the database
- Add new links
- Add tags to the links
- Filter links by a tag
- Create a user acount
- Log in and log out from the user account
- Password reset via email


How it looks like
-----------------

![Bookmark Manager](http://media-cache-ec0.pinimg.com/originals/6c/38/8b/6c388bb620ae9a0db76cd8b521ecf476.jpg "Bookmark Manager")


Technologies used
-----------------

* Ruby
* RSpec
* Sinatra
* Capybara
* CSS
* HTML
* PostgresQL
* DataMapper
* Heroku

How to run program
------------------
```sh
git clone https://github.com/codepreneur/bookmark-manager
cd bookmark-manager
shotgun
```

How to run tests
----------------
```sh
cd bookmark-manager
rspec
```