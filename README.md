Courses
==========================

#To get this app up and running, run these commands in console:

###Install all of the necessary gems listed in the Gemfile
```
bundle install
```

###Create the test and development databases based on the configuration specified in config/database.yml
```
rake db:create:all
```

###Add all of the tables and table attributes to the database defined in the migration files in db/migrate and
update the test environment to match.
```
rake db:migrate
rake db:test:prepare
```

#To run common commands in development:

###Run the test suite:
```
bundle exec rake
```

###To run the app locally:
```
rails s
```
The default host location is http://localhost:3000.

###To add test data to the app:
```
rake db:populate
```

###To reset the database:
```
rake db:reset
rake db:migrate
rake db:test:prepare
```
Then run `db:populate` as needed to add sample data.

#Project Core Contributors:
* [@meltar](https://github.com/meltar)
* [@mLese](https://github.com/mlese)
