source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'aws-sdk-s3'
gem 'bootsnap', require: false
gem 'carrierwave'
gem 'cssbundling-rails'
gem 'devise'
gem 'devise-i18n'
gem "image_processing", ">= 1.2"
gem 'jsbundling-rails'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.3'
gem 'rails-i18n'
gem 'rmagick'
gem 'sassc-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
  gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'pg'
end
