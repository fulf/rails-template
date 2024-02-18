# frozen_string_literal: true

class CreateMailkickSubscriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :mailkick_subscriptions do |t|
      t.references :subscriber, polymorphic: true, index: false
      t.string :list
      t.timestamps
    end

    add_index :mailkick_subscriptions, %i[subscriber_type subscriber_id list], unique: true
  end
end
