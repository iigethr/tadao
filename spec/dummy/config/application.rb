# frozen_string_literal: true

require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)
require "tadao"

module Dummy
  class Application < Rails::Application
    # Specify multiple Rails versions
    def load_defaults(target_version)
      case target_version.to_s
      when "5.2"
        config.load_defaults 5.2
      when "6.0"
        config.load_defaults 6.0
      end
    end

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
