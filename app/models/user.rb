# typed: strict
# frozen_string_literal: true

class User < ApplicationRecord
  extend T::Sig

  has_subscriptions
  has_logidze
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable,
         :lockable, :timeoutable,
         timeout_in: 30.minutes,
         lock_strategy: :failed_attempts, maximum_attempts: 5, unlock_strategy: :time, unlock_in: 1.hour

  sig { returns(T::Boolean) }
  def admin?
    has_role?(Role::ADMIN)
  end
end
