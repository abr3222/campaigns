require_relative 'boot'

require 'rails/all'

# Require Single File for Services Folder
#  require './app/services/chapter2/Gear.rb'
#  require './lib/Logic.rb'

Dir["./app/services/**/*.rb"].sort.each {|file| require file } #incldue all the Folders and Sub folders as well
Dir["./lib/*.rb"].sort.each {|file| require file }

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Campaig
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
