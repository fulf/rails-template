# frozen_string_literal: true

class AddLogidzeToRoles < ActiveRecord::Migration[7.1]
  def change
    add_column :roles, :log_data, :jsonb

    safety_assured do
      reversible do |dir|
        dir.up do
          execute <<~SQL
            CREATE TRIGGER "logidze_on_roles"
            BEFORE UPDATE OR INSERT ON "roles" FOR EACH ROW
            WHEN (coalesce(current_setting('logidze.disabled', true), '') <> 'on')
            -- Parameters: history_size_limit (integer), timestamp_column (text), filtered_columns (text[]),
            -- include_columns (boolean), debounce_time_ms (integer)
            EXECUTE PROCEDURE logidze_logger(null, 'updated_at');

          SQL
        end

        dir.down do
          execute <<~SQL.squish
            DROP TRIGGER IF EXISTS "logidze_on_roles" on "roles";
          SQL
        end
      end
    end
  end
end
