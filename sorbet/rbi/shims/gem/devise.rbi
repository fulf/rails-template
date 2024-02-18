# typed: true

class ApplicationRecord
  extend Devise::Models
end

module Devise::Controllers::Helpers::ClassMethods
  def current_user; end
end
