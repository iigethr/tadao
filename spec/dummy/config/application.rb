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

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Set the default locale
    config.i18n.default_locale = :en

    # Timezone configuration
    config.time_zone = "London"
    config.active_record.default_timezone = :local

    # Remove default field errors
    config.action_view.field_error_proc = proc { |html_tag, _instance| html_tag }
  end
end
