# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `notable` gem.
# Please instead update this file by running `bin/tapioca gem notable`.

# source://notable//lib/notable/debug_exceptions.rb#1
module Notable
  class << self
    # source://notable//lib/notable.rb#64
    def clear_notes; end

    # Returns the value of attribute enabled.
    #
    # source://notable//lib/notable.rb#16
    def enabled; end

    # Sets the attribute enabled
    #
    # @param value the value to set the attribute enabled to.
    #
    # source://notable//lib/notable.rb#16
    def enabled=(_arg0); end

    # Returns the value of attribute jobs_enabled.
    #
    # source://notable//lib/notable.rb#18
    def jobs_enabled; end

    # Sets the attribute jobs_enabled
    #
    # @param value the value to set the attribute jobs_enabled to.
    #
    # source://notable//lib/notable.rb#18
    def jobs_enabled=(_arg0); end

    # @return [Boolean]
    #
    # source://notable//lib/notable.rb#39
    def jobs_enabled?; end

    # source://notable//lib/notable.rb#111
    def mask_ip(ip); end

    # Returns the value of attribute mask_ips.
    #
    # source://notable//lib/notable.rb#24
    def mask_ips; end

    # Sets the attribute mask_ips
    #
    # @param value the value to set the attribute mask_ips to.
    #
    # source://notable//lib/notable.rb#24
    def mask_ips=(_arg0); end

    # source://notable//lib/notable.rb#122
    def monotonic_time; end

    # source://notable//lib/notable.rb#60
    def notes; end

    # source://railties/7.1.3.2/lib/rails/engine.rb#412
    def railtie_helpers_paths; end

    # source://railties/7.1.3.2/lib/rails/engine.rb#395
    def railtie_namespace; end

    # source://railties/7.1.3.2/lib/rails/engine.rb#416
    def railtie_routes_url_helpers(include_path_helpers = T.unsafe(nil)); end

    # Returns the value of attribute requests_enabled.
    #
    # source://notable//lib/notable.rb#17
    def requests_enabled; end

    # Sets the attribute requests_enabled
    #
    # @param value the value to set the attribute requests_enabled to.
    #
    # source://notable//lib/notable.rb#17
    def requests_enabled=(_arg0); end

    # @return [Boolean]
    #
    # source://notable//lib/notable.rb#35
    def requests_enabled?; end

    # Returns the value of attribute slow_job_threshold.
    #
    # source://notable//lib/notable.rb#28
    def slow_job_threshold; end

    # Sets the attribute slow_job_threshold
    #
    # @param value the value to set the attribute slow_job_threshold to.
    #
    # source://notable//lib/notable.rb#28
    def slow_job_threshold=(_arg0); end

    # Returns the value of attribute slow_request_threshold.
    #
    # source://notable//lib/notable.rb#23
    def slow_request_threshold; end

    # Sets the attribute slow_request_threshold
    #
    # @param value the value to set the attribute slow_request_threshold to.
    #
    # source://notable//lib/notable.rb#23
    def slow_request_threshold=(_arg0); end

    # source://railties/7.1.3.2/lib/rails/engine.rb#401
    def table_name_prefix; end

    # source://notable//lib/notable.rb#52
    def track(note_type, note = T.unsafe(nil)); end

    # source://notable//lib/notable.rb#56
    def track_error(e); end

    # source://notable//lib/notable.rb#68
    def track_job(job, job_id, queue, created_at, slow_job_threshold = T.unsafe(nil)); end

    # jobs
    #
    # source://notable//lib/notable.rb#27
    def track_job_method; end

    # jobs
    #
    # source://notable//lib/notable.rb#27
    def track_job_method=(_arg0); end

    # requests
    #
    # source://notable//lib/notable.rb#21
    def track_request_method; end

    # requests
    #
    # source://notable//lib/notable.rb#21
    def track_request_method=(_arg0); end

    # source://railties/7.1.3.2/lib/rails/engine.rb#408
    def use_relative_model_naming?; end

    # Returns the value of attribute user_method.
    #
    # source://notable//lib/notable.rb#22
    def user_method; end

    # Sets the attribute user_method
    #
    # @param value the value to set the attribute user_method to.
    #
    # source://notable//lib/notable.rb#22
    def user_method=(_arg0); end
  end
end

# source://notable//lib/notable/debug_exceptions.rb#2
module Notable::DebugExceptions
  # source://notable//lib/notable/debug_exceptions.rb#3
  def render_exception(request, exception, *_arg2); end
end

# source://notable//lib/notable/engine.rb#2
class Notable::Engine < ::Rails::Engine
  class << self
    # source://activesupport/7.1.3.2/lib/active_support/callbacks.rb#70
    def __callbacks; end
  end
end

class Notable::Job < ::ActiveRecord::Base
  include ::Notable::Job::GeneratedAttributeMethods
  include ::Notable::Job::GeneratedAssociationMethods

  class << self
    # source://activemodel/7.1.3.2/lib/active_model/validations.rb#71
    def _validators; end

    # source://activerecord/7.1.3.2/lib/active_record/enum.rb#167
    def defined_enums; end
  end
end

module Notable::Job::GeneratedAssociationMethods; end
module Notable::Job::GeneratedAttributeMethods; end

# source://notable//lib/notable/job_extensions.rb#2
module Notable::JobExtensions
  extend ::ActiveSupport::Concern
end

# source://notable//lib/notable/middleware.rb#2
class Notable::Middleware
  # @return [Middleware] a new instance of Middleware
  #
  # source://notable//lib/notable/middleware.rb#3
  def initialize(app); end

  # source://notable//lib/notable/middleware.rb#7
  def call(env); end
end

class Notable::Request < ::ActiveRecord::Base
  include ::Notable::Request::GeneratedAttributeMethods
  include ::Notable::Request::GeneratedAssociationMethods

  # source://activerecord/7.1.3.2/lib/active_record/autosave_association.rb#160
  def autosave_associated_records_for_user(*args); end

  class << self
    # source://activesupport/7.1.3.2/lib/active_support/callbacks.rb#70
    def __callbacks; end

    # source://activerecord/7.1.3.2/lib/active_record/reflection.rb#11
    def _reflections; end

    # source://activemodel/7.1.3.2/lib/active_model/validations.rb#71
    def _validators; end

    # source://activerecord/7.1.3.2/lib/active_record/attributes.rb#11
    def attributes_to_define_after_schema_loads; end

    # source://activerecord/7.1.3.2/lib/active_record/enum.rb#167
    def defined_enums; end
  end
end

module Notable::Request::GeneratedAssociationMethods
  # source://activerecord/7.1.3.2/lib/active_record/associations/builder/singular_association.rb#19
  def reload_user; end

  # source://activerecord/7.1.3.2/lib/active_record/associations/builder/singular_association.rb#23
  def reset_user; end

  # source://activerecord/7.1.3.2/lib/active_record/associations/builder/association.rb#103
  def user; end

  # source://activerecord/7.1.3.2/lib/active_record/associations/builder/association.rb#111
  def user=(value); end

  # source://activerecord/7.1.3.2/lib/active_record/associations/builder/belongs_to.rb#145
  def user_changed?; end

  # source://activerecord/7.1.3.2/lib/active_record/associations/builder/belongs_to.rb#149
  def user_previously_changed?; end
end

module Notable::Request::GeneratedAttributeMethods; end

# source://notable//lib/notable/unverified_request.rb#2
module Notable::UnverifiedRequest
  extend ::ActiveSupport::Concern

  # source://notable//lib/notable/unverified_request.rb#9
  def track_unverified_request; end
end

# source://notable//lib/notable/version.rb#2
Notable::VERSION = T.let(T.unsafe(nil), String)

# source://notable//lib/notable/validation_errors.rb#2
module Notable::ValidationErrors
  extend ::ActiveSupport::Concern

  # source://notable//lib/notable/validation_errors.rb#9
  def track_validation_errors; end
end
