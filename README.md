Courses
==========================

##To get this app up and running, run these commands in console:

**Install all of the necessary gems listed in the Gemfile**
```
bundle install
```

**Create the test and development databases based on the configuration specified in config/database.yml**
```
rake db:create:all
```

**Add all of the tables and table attributes to the database defined in db/schema.rb.**
**Update the test environment to match.**
```
rake db:schema:load
rake db:test:load
```

##To run common commands in development:

**Run the test suite:**
```
bundle exec rake
```

**Run the app locally:**
```
rails s
```
The default host location is http://localhost:3000.

**Add test data to the app:**
```
rake db:populate
```

**Run migrations**
```
rake db:migrate
rake db:test:prepare
```

**Reset the database:**
```
rake db:reset
rake db:test:load
```
Then run `db:populate` as needed to add sample data.

##Project Core Contributors:
* [@meltar](https://github.com/meltar)
* [@mLese](https://github.com/mlese)
