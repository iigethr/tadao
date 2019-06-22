# frozen_string_literal: true

module Tadao
  class Engine < ::Rails::Engine
    # Tadao config misc
    initializer :tadao_config_misc do
      Rails.application.config.sass.inline_source_maps = true
    end

    # Tadao load assets
    initializer :tadao_load_assets do
      Rails.application.config.assets.paths << root.join("assets")
      Rails.application.config.assets.paths << root.join("assets", "fonts")
      Rails.application.config.assets.paths << root.join("assets", "images")
      Rails.application.config.assets.paths << root.join("assets", "stylesheets")
    end

    # Default generator setup
    config.generators do |generator|
      generator.test_framework :rspec
    end
  end
end
