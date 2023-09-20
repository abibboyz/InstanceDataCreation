# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Some useful commands
*******************
Docker compose build
Run Docker : docker compose up

Run migration : docker compose run web rails db:migrate

If no database is shown

Run db create : docker compose run web rails db:create

Run this if you add new file in assets like js/css/images,etc : docker compose run web rails assets:precompile


load existing data from seed to db:
docker compose run web rails db:seed
