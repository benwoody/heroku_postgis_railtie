require "heroku_postgis/version"

module HerokuPostgis
  class Railtie < Rails::Railtie
    initializer "active_record.initialize_database.heroku_postgis" do
      ActiveSupport.on_load(:active_record) do
        if url = ENV['DATABASE_URL']
          ActiveRecord::Base.connection_pool.disconnect!
          parsed_url = URI.parse(url)
          config = {
            adapter: 'postgis',
            host: parsed_url.host,
            encoding: 'unicode',
            database: parsed_url.path.split("/")[-1],
            port: parsed_url.port,
            username: parsed_url.user,
            password: parsed_url.password
          }
          establish_connection(config)
        end
      end
    end
  end
end

require 'heroku_postgis/railtie' if defined?(Rails)
