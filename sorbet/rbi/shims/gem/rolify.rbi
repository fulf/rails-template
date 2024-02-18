# typed: true

class ApplicationRecord
  extend Rolify
  include Rolify::Role
end

class Role
  extend Rolify
end
