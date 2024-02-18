# frozen_string_literal: true

class AddLogidzeToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :log_data, :jsonb

    safety_assured do
      reversible do |dir|
        dir.up do
          execute <<~SQL
            CREATE TRIGGER "logidze_on_users"
            BEFORE UPDATE OR INSERT ON "users" FOR EACH ROW
            WHEN (coalesce(current_setting('logidze.disabled', true), '') <> 'on')
            -- Parameters: history_size_limit (integer), timestamp_column (text), filtered_columns (text[]),
            -- include_columns (boolean), debounce_time_ms (integer)
            EXECUTE PROCEDURE logidze_logger(null, 'updated_at', '{updated_at,sign_in_count,last_sign_in_at,last_sign_in_ip,current_sign_in_at,current_sign_in_ip}');

          SQL
        end

        dir.down do
          execute <<~SQL.squish
            DROP TRIGGER IF EXISTS "logidze_on_users" on "users";
          SQL
        end
      end
    end
  end
end
