# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `data_migrate` gem.
# Please instead update this file by running `bin/tapioca gem data_migrate`.

# source://data_migrate//lib/data_migrate/rails_helper.rb#1
module DataMigrate
  include ::ActiveSupport::Configurable
  extend ::ActiveSupport::Configurable::ClassMethods

  class << self
    # source://data_migrate//lib/data_migrate/config.rb#9
    def config; end

    # @yield [config]
    #
    # source://data_migrate//lib/data_migrate/config.rb#5
    def configure; end

    # source://data_migrate//lib/data_migrate.rb#18
    def root; end
  end
end

# source://data_migrate//lib/data_migrate/config.rb#14
class DataMigrate::Config
  # @return [Config] a new instance of Config
  #
  # source://data_migrate//lib/data_migrate/config.rb#19
  def initialize; end

  # Returns the value of attribute data_migrations_path.
  #
  # source://data_migrate//lib/data_migrate/config.rb#15
  def data_migrations_path; end

  # Sets the attribute data_migrations_path
  #
  # @param value the value to set the attribute data_migrations_path to.
  #
  # source://data_migrate//lib/data_migrate/config.rb#15
  def data_migrations_path=(_arg0); end

  # Returns the value of attribute data_template_path.
  #
  # source://data_migrate//lib/data_migrate/config.rb#15
  def data_template_path; end

  # Sets the attribute data_template_path
  #
  # @param value the value to set the attribute data_template_path to.
  #
  # source://data_migrate//lib/data_migrate/config.rb#26
  def data_template_path=(value); end

  # Returns the value of attribute db_configuration.
  #
  # source://data_migrate//lib/data_migrate/config.rb#15
  def db_configuration; end

  # Sets the attribute db_configuration
  #
  # @param value the value to set the attribute db_configuration to.
  #
  # source://data_migrate//lib/data_migrate/config.rb#15
  def db_configuration=(_arg0); end

  # Returns the value of attribute spec_name.
  #
  # source://data_migrate//lib/data_migrate/config.rb#15
  def spec_name; end

  # Sets the attribute spec_name
  #
  # @param value the value to set the attribute spec_name to.
  #
  # source://data_migrate//lib/data_migrate/config.rb#15
  def spec_name=(_arg0); end
end

# source://data_migrate//lib/data_migrate/config.rb#17
DataMigrate::Config::DEFAULT_DATA_TEMPLATE_PATH = T.let(T.unsafe(nil), String)

# Provides the definition method for data_schema.rb
#
# source://data_migrate//lib/data_migrate/data_schema.rb#6
class DataMigrate::Data < ::ActiveRecord::Schema
  # This method is based on the following two methods
  #   ActiveRecord::Schema#define
  #   ActiveRecord::ConnectionAdapters::SchemaStatements
  #     #assume_migrated_upto_version
  #
  # source://data_migrate//lib/data_migrate/data_schema.rb#11
  def define(info); end

  private

  # source://data_migrate//lib/data_migrate/data_schema.rb#42
  def insert(version); end

  # source://data_migrate//lib/data_migrate/data_schema.rb#27
  def migrated; end

  # source://data_migrate//lib/data_migrate/data_schema.rb#55
  def sm_table; end

  # source://data_migrate//lib/data_migrate/data_schema.rb#59
  def table_name; end

  # source://data_migrate//lib/data_migrate/data_schema.rb#31
  def versions; end
end

# source://data_migrate//lib/data_migrate/data_migrator.rb#7
class DataMigrate::DataMigrator < ::ActiveRecord::Migrator
  # source://data_migrate//lib/data_migrate/data_migrator.rb#8
  def load_migrated; end

  private

  # source://data_migrate//lib/data_migrate/data_migrator.rb#67
  def record_version_state_after_migrating(version); end

  class << self
    # source://data_migrate//lib/data_migrate/data_migrator.rb#18
    def create_data_schema_table; end

    # source://data_migrate//lib/data_migrate/data_migrator.rb#22
    def current_version; end

    # Provides the full migrations_path filepath
    #
    # @return [String]
    #
    # source://data_migrate//lib/data_migrate/data_migrator.rb#41
    def full_migrations_path; end

    # Compares the given filename with what we expect data migration
    # filenames to be, eg the "20091231235959_some_name.rb" pattern
    #
    # @param filename [String]
    # @return [MatchData]
    #
    # source://data_migrate//lib/data_migrate/data_migrator.rb#31
    def match(filename); end

    # TODO: this was added to be backward compatible, need to re-evaluate
    #
    # source://data_migrate//lib/data_migrate/data_migrator.rb#50
    def migrations(_migrations_paths); end

    # source://data_migrate//lib/data_migrate/data_migrator.rb#14
    def migrations_paths; end

    # source://data_migrate//lib/data_migrate/data_migrator.rb#45
    def migrations_status; end

    # @return [Boolean]
    #
    # source://data_migrate//lib/data_migrate/data_migrator.rb#35
    def needs_migration?; end

    # source://data_migrate//lib/data_migrate/data_migrator.rb#60
    def rollback(migrations_path, steps); end

    # TODO: this was added to be backward compatible, need to re-evaluate
    #
    # source://data_migrate//lib/data_migrate/data_migrator.rb#56
    def run(direction, migration_paths, version); end
  end
end

# source://data_migrate//lib/data_migrate/data_schema_migration.rb#2
class DataMigrate::DataSchemaMigration < ::ActiveRecord::SchemaMigration
  # source://data_migrate//lib/data_migrate/data_schema_migration.rb#10
  def primary_key; end

  # source://data_migrate//lib/data_migrate/data_schema_migration.rb#6
  def table_name; end
end

# This wrapper is used to differentiate between
# a data and schema db config when running migrations
#
# source://data_migrate//lib/data_migrate/database_configurations_wrapper.rb#4
class DataMigrate::DatabaseConfigurationWrapper
  # @return [DatabaseConfigurationWrapper] a new instance of DatabaseConfigurationWrapper
  #
  # source://data_migrate//lib/data_migrate/database_configurations_wrapper.rb#7
  def initialize(db_config); end

  # Returns the value of attribute db_config.
  #
  # source://data_migrate//lib/data_migrate/database_configurations_wrapper.rb#5
  def db_config; end
end

# This class extends DatabaseTasks to add a schema_file method.
#
# source://data_migrate//lib/data_migrate/database_tasks.rb#8
module DataMigrate::DatabaseTasks
  extend ::ActiveRecord::Tasks::DatabaseTasks
  extend ::DataMigrate::DatabaseTasks

  # source://data_migrate//lib/data_migrate/database_tasks.rb#87
  def check_schema_file(filename); end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#109
  def data_migrations_path; end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#49
  def db_configs_with_versions; end

  # This method is removed in Rails 7.0
  #
  # source://data_migrate//lib/data_migrate/database_tasks.rb#77
  def dump_filename(spec_name, format = T.unsafe(nil)); end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#143
  def forward(step = T.unsafe(nil)); end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#169
  def past_migrations(sort = T.unsafe(nil)); end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#157
  def pending_data_migrations; end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#94
  def pending_migrations; end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#165
  def pending_schema_migrations; end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#113
  def run_migration(migration, direction); end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#127
  def schema_dump_path(db_config, format = T.unsafe(nil)); end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#68
  def schema_file(_format = T.unsafe(nil)); end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#72
  def schema_file_type(_format = T.unsafe(nil)); end

  # Override this method from `ActiveRecord::Tasks::DatabaseTasks`
  # to ensure that the sha saved in ar_internal_metadata table
  # is from the original schema.rb file
  #
  # source://data_migrate//lib/data_migrate/database_tasks.rb#139
  def schema_sha1(file); end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#101
  def sort_migrations(*migrations); end

  # source://data_migrate//lib/data_migrate/database_tasks.rb#105
  def sort_string(migration); end
end

# source://data_migrate//lib/data_migrate/migration_context.rb#2
class DataMigrate::MigrationContext < ::ActiveRecord::MigrationContext
  # @return [MigrationContext] a new instance of MigrationContext
  #
  # source://data_migrate//lib/data_migrate/migration_context.rb#3
  def initialize(migrations_paths = T.unsafe(nil)); end

  # source://data_migrate//lib/data_migrate/migration_context.rb#35
  def current_version; end

  # source://data_migrate//lib/data_migrate/migration_context.rb#18
  def down(target_version = T.unsafe(nil)); end

  # source://data_migrate//lib/data_migrate/migration_context.rb#40
  def migration_files; end

  # source://data_migrate//lib/data_migrate/migration_context.rb#45
  def migrations_status; end

  # source://data_migrate//lib/data_migrate/migration_context.rb#30
  def run(direction, target_version); end

  # source://data_migrate//lib/data_migrate/migration_context.rb#7
  def up(target_version = T.unsafe(nil)); end

  private

  # source://data_migrate//lib/data_migrate/migration_context.rb#65
  def get_all_versions; end

  # source://data_migrate//lib/data_migrate/migration_context.rb#73
  def move(direction, steps); end
end

# source://data_migrate//lib/data_migrate/rails_helper.rb#2
class DataMigrate::RailsHelper
  class << self
    # source://data_migrate//lib/data_migrate/rails_helper.rb#64
    def data_migrator(direction, migrations, schema_migration = T.unsafe(nil), internal_metadata = T.unsafe(nil), target_version = T.unsafe(nil)); end

    # source://data_migrate//lib/data_migrate/rails_helper.rb#48
    def data_schema_delete_version(version); end

    # source://data_migrate//lib/data_migrate/rails_helper.rb#56
    def data_schema_migration; end

    # source://data_migrate//lib/data_migrate/rails_helper.rb#16
    def internal_metadata; end

    # source://data_migrate//lib/data_migrate/rails_helper.rb#10
    def rails_version_equal_to_or_higher_than_7_0; end

    # source://data_migrate//lib/data_migrate/rails_helper.rb#4
    def rails_version_equal_to_or_higher_than_7_1; end

    # source://data_migrate//lib/data_migrate/rails_helper.rb#40
    def schema_create_version(version); end

    # source://data_migrate//lib/data_migrate/rails_helper.rb#24
    def schema_migration; end

    # source://data_migrate//lib/data_migrate/rails_helper.rb#32
    def schema_migration_versions; end
  end
end

# source://data_migrate//lib/data_migrate/railtie.rb#2
class DataMigrate::Railtie < ::Rails::Railtie; end

# Provides the capability to write the current data schema version to
# the data_schema file Based on ActiveRecord::SchemaDumper
#
# source://data_migrate//lib/data_migrate/schema_dumper.rb#7
class DataMigrate::SchemaDumper
  # @return [SchemaDumper] a new instance of SchemaDumper
  #
  # source://data_migrate//lib/data_migrate/schema_dumper.rb#27
  def initialize(connection); end

  # source://data_migrate//lib/data_migrate/schema_dumper.rb#17
  def dump(stream); end

  class << self
    # source://data_migrate//lib/data_migrate/schema_dumper.rb#11
    def dump(connection = T.unsafe(nil), stream = T.unsafe(nil)); end

    private

    def new(*_arg0); end
  end
end

# Helper class to getting access to db schema
# to allow data/schema combiation tasks
#
# source://data_migrate//lib/data_migrate/schema_migration.rb#6
class DataMigrate::SchemaMigration
  class << self
    # source://data_migrate//lib/data_migrate/schema_migration.rb#25
    def migrations_paths; end

    # source://data_migrate//lib/data_migrate/schema_migration.rb#7
    def pending_schema_migrations; end

    # source://data_migrate//lib/data_migrate/schema_migration.rb#16
    def run(direction, migration_paths, version); end

    # source://data_migrate//lib/data_migrate/schema_migration.rb#20
    def sort_migrations(set1, set2 = T.unsafe(nil)); end

    # source://data_migrate//lib/data_migrate/schema_migration.rb#37
    def sort_string(migration); end
  end
end

# source://data_migrate//lib/data_migrate/status_service.rb#4
class DataMigrate::StatusService
  # @return [StatusService] a new instance of StatusService
  #
  # source://data_migrate//lib/data_migrate/status_service.rb#12
  def initialize(connection); end

  # source://data_migrate//lib/data_migrate/status_service.rb#20
  def dump(stream); end

  # source://data_migrate//lib/data_migrate/status_service.rb#16
  def root_folder; end

  private

  # source://data_migrate//lib/data_migrate/status_service.rb#46
  def database_name; end

  # source://data_migrate//lib/data_migrate/status_service.rb#54
  def db_list; end

  # source://data_migrate//lib/data_migrate/status_service.rb#30
  def output(stream); end

  # source://data_migrate//lib/data_migrate/status_service.rb#26
  def table_name; end

  class << self
    # source://data_migrate//lib/data_migrate/status_service.rb#6
    def dump(connection = T.unsafe(nil), stream = T.unsafe(nil)); end
  end
end

# source://data_migrate//lib/data_migrate/tasks/data_migrate_tasks.rb#4
module DataMigrate::Tasks; end

# source://data_migrate//lib/data_migrate/tasks/data_migrate_tasks.rb#5
module DataMigrate::Tasks::DataMigrateTasks
  extend ::DataMigrate::Tasks::DataMigrateTasks

  # source://data_migrate//lib/data_migrate/tasks/data_migrate_tasks.rb#29
  def abort_if_pending_migrations(migrations, message); end

  # source://data_migrate//lib/data_migrate/tasks/data_migrate_tasks.rb#12
  def dump; end

  # @return [Boolean]
  #
  # source://data_migrate//lib/data_migrate/tasks/data_migrate_tasks.rb#39
  def dump_schema_after_migration?; end

  # source://data_migrate//lib/data_migrate/tasks/data_migrate_tasks.rb#22
  def migrate; end

  # source://data_migrate//lib/data_migrate/tasks/data_migrate_tasks.rb#8
  def migrations_paths; end

  # source://data_migrate//lib/data_migrate/tasks/data_migrate_tasks.rb#47
  def status; end

  # source://data_migrate//lib/data_migrate/tasks/data_migrate_tasks.rb#51
  def status_with_schema; end

  private

  # source://data_migrate//lib/data_migrate/tasks/data_migrate_tasks.rb#96
  def database_name; end
end
