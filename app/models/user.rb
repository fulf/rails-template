# typed: true

class User < ApplicationRecord
  def foo
    fizz.map { |bar| bar.baz + bar.bizz }
  end
end
