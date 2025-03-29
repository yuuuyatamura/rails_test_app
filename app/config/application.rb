require_relative "boot"

require "rails/all"
# 下1行を追記
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module RailsGraphqlTest
  class Application < Rails::Application
    config.load_defaults 7.0
    # true -> falseに
    config.api_only = false
  end
end
