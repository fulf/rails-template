# typed: true

class ApplicationRecord
  extend Mailkick::Model
end

module Mailkick::InstanceMethods
  sig { params(list: String).void }
  def subscribe(list); end

  sig { params(list: String).void }
  def unsubscribe(list); end

  sig { params(list: String).returns(T::Boolean) }
  def subscribed?(list); end
end
