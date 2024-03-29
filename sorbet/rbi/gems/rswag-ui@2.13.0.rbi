# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rswag-ui` gem.
# Please instead update this file by running `bin/tapioca gem rswag-ui`.

# source://rswag-ui//lib/rswag/ui/configuration.rb#4
module Rswag; end

# source://rswag-ui//lib/rswag/ui/configuration.rb#5
module Rswag::Ui
  class << self
    # source://rswag-ui//lib/rswag/ui.rb#10
    def config; end

    # @yield [config]
    #
    # source://rswag-ui//lib/rswag/ui.rb#6
    def configure; end

    # source://rswag-ui//lib/rswag/ui.rb#14
    def deprecator; end

    # source://railties/7.1.3.2/lib/rails/engine.rb#412
    def railtie_helpers_paths; end

    # source://railties/7.1.3.2/lib/rails/engine.rb#395
    def railtie_namespace; end

    # source://railties/7.1.3.2/lib/rails/engine.rb#416
    def railtie_routes_url_helpers(include_path_helpers = T.unsafe(nil)); end

    # source://railties/7.1.3.2/lib/rails/engine.rb#401
    def table_name_prefix; end

    # source://railties/7.1.3.2/lib/rails/engine.rb#408
    def use_relative_model_naming?; end
  end
end

# Extend Rack HTTP Basic Authentication, as per RFC 2617.
#
# @api private
#
# source://rswag-ui//lib/rswag/ui/basic_auth.rb#10
class Rswag::Ui::BasicAuth < ::Rack::Auth::Basic
  # @api private
  #
  # source://rswag-ui//lib/rswag/ui/basic_auth.rb#11
  def call(env); end

  private

  # @api private
  #
  # source://rswag-ui//lib/rswag/ui/basic_auth.rb#26
  def base_path(url); end

  # @api private
  #
  # source://rswag-ui//lib/rswag/ui/basic_auth.rb#19
  def env_matching_path(env); end
end

# source://rswag-ui//lib/rswag/ui/configuration.rb#6
class Rswag::Ui::Configuration
  # @return [Configuration] a new instance of Configuration
  #
  # source://rswag-ui//lib/rswag/ui/configuration.rb#13
  def initialize; end

  # Returns the value of attribute assets_root.
  #
  # source://rswag-ui//lib/rswag/ui/configuration.rb#11
  def assets_root; end

  # source://rswag-ui//lib/rswag/ui/configuration.rb#38
  def basic_auth_credentials(username, password); end

  # Returns the value of attribute basic_auth_enabled.
  #
  # source://rswag-ui//lib/rswag/ui/configuration.rb#8
  def basic_auth_enabled; end

  # Sets the attribute basic_auth_enabled
  #
  # @param value the value to set the attribute basic_auth_enabled to.
  #
  # source://rswag-ui//lib/rswag/ui/configuration.rb#8
  def basic_auth_enabled=(_arg0); end

  # Returns the value of attribute config_object.
  #
  # source://rswag-ui//lib/rswag/ui/configuration.rb#9
  def config_object; end

  # Sets the attribute config_object
  #
  # @param value the value to set the attribute config_object to.
  #
  # source://rswag-ui//lib/rswag/ui/configuration.rb#9
  def config_object=(_arg0); end

  # source://rswag-ui//lib/rswag/ui/configuration.rb#43
  def get_binding; end

  # Returns the value of attribute oauth_config_object.
  #
  # source://rswag-ui//lib/rswag/ui/configuration.rb#10
  def oauth_config_object; end

  # Sets the attribute oauth_config_object
  #
  # @param value the value to set the attribute oauth_config_object to.
  #
  # source://rswag-ui//lib/rswag/ui/configuration.rb#10
  def oauth_config_object=(_arg0); end

  # source://rswag-ui//lib/rswag/ui/configuration.rb#33
  def openapi_endpoint(url, name); end

  # source://rswag-ui//lib/rswag/ui/configuration.rb#28
  def swagger_endpoint(url, name); end

  # Returns the value of attribute template_locations.
  #
  # source://rswag-ui//lib/rswag/ui/configuration.rb#7
  def template_locations; end
end

# source://rswag-ui//lib/rswag/ui/engine.rb#6
class Rswag::Ui::Engine < ::Rails::Engine
  class << self
    # source://activesupport/7.1.3.2/lib/active_support/callbacks.rb#70
    def __callbacks; end
  end
end

# source://rswag-ui//lib/rswag/ui/middleware.rb#3
class Rswag::Ui::Middleware < ::Rack::Static
  # @return [Middleware] a new instance of Middleware
  #
  # source://rswag-ui//lib/rswag/ui/middleware.rb#5
  def initialize(app, config); end

  # source://rswag-ui//lib/rswag/ui/middleware.rb#10
  def call(env); end

  private

  # @return [Boolean]
  #
  # source://rswag-ui//lib/rswag/ui/middleware.rb#25
  def base_path?(env); end

  # source://rswag-ui//lib/rswag/ui/middleware.rb#43
  def csp; end

  # @return [Boolean]
  #
  # source://rswag-ui//lib/rswag/ui/middleware.rb#29
  def index_path?(env); end

  # source://rswag-ui//lib/rswag/ui/middleware.rb#33
  def render_template; end

  # source://rswag-ui//lib/rswag/ui/middleware.rb#39
  def template_filename; end
end
