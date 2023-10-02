# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MarketplaceApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.generators do |generator|
      generator.test_framework :rspec, fixture: true
      generator.fixture_replacement :factory_bot, dir: 'spec/factories'
      generator.view_specs false
      generator.stylesheets = false
      generator.helper = false
      generator.javascripts = false
      generator.helper_specs false
    end
    config.eager_load_paths << Rails.root.join('lib')
    config.api_only = true
  end
end