# typed: strict
# frozen_string_literal: true

class LoginActivity < ApplicationRecord
  extend T::Sig

  belongs_to :user, polymorphic: true, optional: true

  has_encrypted :identity, :ip
  blind_index :identity, :ip

  before_save :reduce_precision

  # reduce precision to city level to protect IP
  sig { void }
  def reduce_precision
    self.latitude = latitude&.round(1)&.to_f if try(:latitude_changed?)
    self.longitude = longitude&.round(1)&.to_f if try(:longitude_changed?)
  end
end
