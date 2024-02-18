# frozen_string_literal: true

class CreateNotableRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :notable_requests do |t|
      t.string :note_type
      t.text :note
      t.references :user, polymorphic: true
      t.text :action
      t.integer :status
      t.text :url
      t.string :request_id
      t.string :ip
      t.text :user_agent
      t.text :referrer
      t.text :params
      t.float :request_time
      t.datetime :created_at
    end
  end
end
