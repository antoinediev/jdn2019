# frozen_string_literal: true

if Rails.env.production?
  Raven.configure do |config|
    config.dsn = 'https://d62e5aa9be48499abc8b30c06be648f7:cf4301d9959748f1a4b927e92f5f40c0@sentry.io/1312801'
  end
end
