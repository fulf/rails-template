# typed: true

class ApplicationRecord
  extend Logidze::HasLogidze::ClassMethods
  include Logidze::Model
end
