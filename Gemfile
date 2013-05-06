source 'https://rubygems.org'

gem 'rails', '~> 3.2'
gem 'pg',    '~> 0.14'

group :assets do
  gem 'jquery-rails', '~> 2.2'
  gem 'sass-rails',   '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'uglifier',     '~> 1.3'
end

group :development, :test do
  gem 'rspec-rails'                 # for tests
  gem 'spork'                       # speedier tests
  gem 'guard-rspec'                 # watch app files
  gem 'guard-spork'                 # spork integration
  gem 'database_cleaner'            # cleanup database in tests
  gem 'fabrication'                 # model stubber
  gem 'shoulda'                     # model spec tester
  gem 'rb-inotify', require: false  # Linux file notification
  gem 'rb-fsevent', require: false  # OSX file notification
  gem 'rb-fchange', require: false  # Windows file notification
end

gem 'devise'                   # server-side authentication
gem 'bcrypt-ruby'              # password encryption

gem 'inherited_resources'      # for easy RESTful API controller scaffolding
gem 'active_model_serializers' # works out of the box with ember-data

gem 'handlebars-source', '1.0.0.rc3'
gem 'ember-rails'              # ember framework
gem 'ember-auth-rails'         # client-side authentication
gem 'emblem-rails'             # easier to write templates

gem 'unicorn'                  # better server gem for heroku

gem 'newrelic_rpm'             # prevent heroku from idling
