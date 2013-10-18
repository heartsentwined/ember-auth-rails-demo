source 'https://rubygems.org'

ruby '2.0.0' # or 1.9.3

gem 'rails', '~> 4.0'
gem 'pg', '~> 0.14'
gem 'unicorn', '~> 4.6'

gem 'jquery-rails', '~> 3.0'
gem 'coffee-rails', '~> 4.0'
gem 'sass-rails', '~> 4.0'
gem 'uglifier', '~> 2.1'

gem 'devise', '>= 3.0', '< 3.1' # server-side authentication
                                # 3.1 removes token auth
gem 'bcrypt-ruby', '~> 3.0' # password encryption

gem 'active_model_serializers', '~> 0.7' # json that conforms to ember-data expectation

gem 'ember-rails', '~> 0.13' # ember framework
gem 'ember-data-source', '>= 1.0.0.beta.3', '< 2.0' # ember-data not yet out of beta
gem 'emblem-rails', '~> 0.1' # easier to write templates

gem 'ember-auth-rails', '~> 5.0' # client-side authentication
gem 'ember-auth-request-jquery-rails', '~> 1.0' # auth requests via jQuery.ajax
gem 'ember-auth-response-json-rails', '~> 1.0' # responses in json
gem 'ember-auth-strategy-token-rails', '~> 1.0' # token authentication
gem 'ember-auth-session-cookie-rails', '~> 1.0' # use cookies
gem 'ember-auth-module-ember_data-rails', '~> 1.0' # ember-data integration
gem 'ember-auth-module-auth_redirectable-rails', '~> 1.0' # auth-only routes
gem 'ember-auth-module-action_redirectable-rails', '~> 1.0' # post- sign in/out redirect
gem 'ember-auth-module-rememberable-rails', '~> 1.0' # remember me

group :test do
  gem 'rspec-rails', '~> 2.13' # test framework
  gem 'spork', '>= 1.0.0rc3', '< 2.0' # speedier tests
  gem 'guard-rspec', '~> 3.0' # watch app files and auto-re-run tests
  gem 'guard-spork', '~> 1.5' # spork integration
  gem 'database_cleaner', '~> 1.0' # cleanup database in tests
  gem 'fabrication', '~> 2.6' # model stubber
  gem 'shoulda', '~> 3.3' # model spec tester
  gem 'rb-inotify', require: false  # Linux file notification
  gem 'rb-fsevent', require: false  # OSX file notification
  gem 'rb-fchange', require: false  # Windows file notification
end

group :production do
  gem 'rails_12factor', '~> 0.0' # tweaks for heroku
  gem 'newrelic_rpm', '~> 3.5' # prevent heroku from idling
end
