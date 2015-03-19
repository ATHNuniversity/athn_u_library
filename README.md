# AthnULibrary

## Basic Setup
0. git clone repo
1. `brew update`
2. `brew install elixir`
3. `brew upgrade npm`
4. `npm install`
5. `npm -g install brunch`
6. setup database (see below)
7. `mix ecto.create`
8. `mix ecto.migrate`
9. `mix phoenix.server`
10. visit `localhost:4000/links`

## Database Setup
1. `psql -d template1`
2. `create user athn_u_library;`
3. `drop role athn_u_library;`
4. `create user athn_u_library;`
5. `alter role athn_u_library createdb;`
6. `\q`

[ATHNuniversity Library on Heroku](http://athn-u-library.herokuapp.com)