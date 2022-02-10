# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

# Core
gem "pg"
gem "puma"
gem "rails", "~> 7.0.1"
gem "redis", "~> 4.0"

# Frontend
gem "dartsass-rails", github: "rails/dartsass-rails"
gem "importmap-rails"
gem "propshaft", github: "rails/propshaft"
gem "stimulus-rails"
gem "turbo-rails"

# Authentication
gem "email_validator"
gem "bcrypt", "~> 3.1.7"

# Infra
gem "bootsnap", require: false
gem "tzinfo-data", platforms: [ :mingw, :mswin, :x64_mingw, :jruby ]

group :development, :test do
  gem "debug", platforms: [ :mri, :mingw, :x64_mingw ]
  gem "foreman"
  gem "rubocop"
  gem "rubocop-rails"
end

group :development do
  gem "web-console"
end

group :test do
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
