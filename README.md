# Heroku Postgis Railtie

This Railtie updates your database config to work with Postgis and Heroku.  On
launch, Heroku updates your database.yml file to work with their database
instances.  This overrides those updates to make sure the database adapter
type is set to 'postgis'.

The idea for this Railtie is from the Heroku article at: 

https://devcenter.heroku.com/articles/postgis#setting-up-postgis-with-rails
## Installation

Add this line to your application's Gemfile:

    gem 'heroku_postgis'

And that's it!  There is no need to require this anywhere in your Rails app.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
