# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rswag-api` gem.
# Please instead update this file by running `bin/tapioca gem rswag-api`.

# source://rswag-api//lib/rswag/api/configuration.rb#1
module Rswag; end

# source://rswag-api//lib/rswag/api/configuration.rb#2
module Rswag::Api
  class << self
    # source://rswag-api//lib/rswag/api.rb#16
    def config; end

    # @yield [config]
    #
    # source://rswag-api//lib/rswag/api.rb#12
    def configure; end

    # source://rswag-api//lib/rswag/api.rb#20
    def deprecator; end

    # source://railties/7.1.3/lib/rails/engine.rb#412
    def railtie_helpers_paths; end

    # source://railties/7.1.3/lib/rails/engine.rb#395
    def railtie_namespace; end

    # source://railties/7.1.3/lib/rails/engine.rb#416
    def railtie_routes_url_helpers(include_path_helpers = T.unsafe(nil)); end

    # source://railties/7.1.3/lib/rails/engine.rb#401
    def table_name_prefix; end

    # source://railties/7.1.3/lib/rails/engine.rb#408
    def use_relative_model_naming?; end
  end
end

# source://rswag-api//lib/rswag/api/configuration.rb#3
class Rswag::Api::Configuration
  # Returns the value of attribute openapi_root.
  #
  # source://rswag-api//lib/rswag/api/configuration.rb#4
  def openapi_root; end

  # Sets the attribute openapi_root
  #
  # @param value the value to set the attribute openapi_root to.
  #
  # source://rswag-api//lib/rswag/api/configuration.rb#4
  def openapi_root=(_arg0); end

  # source://rswag-api//lib/rswag/api/configuration.rb#6
  def resolve_openapi_root(env); end

  # Returns the value of attribute swagger_filter.
  #
  # source://rswag-api//lib/rswag/api/configuration.rb#4
  def swagger_filter; end

  # Sets the attribute swagger_filter
  #
  # @param value the value to set the attribute swagger_filter to.
  #
  # source://rswag-api//lib/rswag/api/configuration.rb#4
  def swagger_filter=(_arg0); end

  # Returns the value of attribute swagger_headers.
  #
  # source://rswag-api//lib/rswag/api/configuration.rb#4
  def swagger_headers; end

  # Sets the attribute swagger_headers
  #
  # @param value the value to set the attribute swagger_headers to.
  #
  # source://rswag-api//lib/rswag/api/configuration.rb#4
  def swagger_headers=(_arg0); end

  # source://activesupport/7.1.3/lib/active_support/deprecation/method_wrappers.rb#46
  def swagger_root=(*args, **_arg1, &block); end
end

# source://rswag-api//lib/rswag/api/engine.rb#5
class Rswag::Api::Engine < ::Rails::Engine
  class << self
    # source://activesupport/7.1.3/lib/active_support/callbacks.rb#70
    def __callbacks; end
  end
end

# source://rswag-api//lib/rswag/api/middleware.rb#7
class Rswag::Api::Middleware
  # @return [Middleware] a new instance of Middleware
  #
  # source://rswag-api//lib/rswag/api/middleware.rb#8
  def initialize(app, config); end

  # source://rswag-api//lib/rswag/api/middleware.rb#13
  def call(env); end

  private

  # source://rswag-api//lib/rswag/api/middleware.rb#52
  def load_json(filename); end

  # source://rswag-api//lib/rswag/api/middleware.rb#48
  def load_yaml(filename); end

  # source://rswag-api//lib/rswag/api/middleware.rb#40
  def parse_file(filename); end

  # source://rswag-api//lib/rswag/api/middleware.rb#56
  def unload_swagger(filename, swagger); end
end

# source://rswag-api//lib/rswag/api.rb#7
Rswag::Api::RENAMED_METHODS = T.let(T.unsafe(nil), Hash)