source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.3"

gem "rails", "~> 7.0.4", ">= 7.0.4.3"

# Auth
gem "devise"

gem "sprockets-rails"

gem "pg", "~> 1.1"

gem "puma", "~> 5.0"

gem "importmap-rails"

gem "turbo-rails"

gem "stimulus-rails"

gem "jbuilder"

gem "redis", "~> 4.0"


gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

gem 'rails-i18n', '~> 7.0.0'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails', '~> 4.0.1'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers', '~> 4.0'
  gem 'faker'
  gem 'pry-byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-rails'
end

group :development do
  gem "web-console"


end

