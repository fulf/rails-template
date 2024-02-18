# frozen_string_literal: true

# rubocop:disable Metrics/AbcSize
class CreateLoginActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :login_activities do |t|
      t.string :scope
      t.string :strategy
      t.text :identity_ciphertext
      t.string :identity_bidx, index: true
      t.boolean :success, null: false, default: false
      t.string :failure_reason
      t.references :user, polymorphic: true
      t.string :context
      t.text :ip_ciphertext
      t.string :ip_bidx, index: true
      t.text :user_agent
      t.text :referrer
      t.string :city
      t.string :region
      t.string :country
      t.float :latitude
      t.float :longitude
      t.datetime :created_at
    end
  end
end
# rubocop:enable Metrics/AbcSize
