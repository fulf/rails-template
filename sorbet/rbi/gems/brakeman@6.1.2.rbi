# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `brakeman` gem.
# Please instead update this file by running `bin/tapioca gem brakeman`.

# source://brakeman//lib/brakeman/version.rb#1
module Brakeman
  class << self
    # source://brakeman//lib/brakeman.rb#571
    def add_external_checks(options); end

    # source://brakeman//lib/brakeman.rb#577
    def check_for_missing_checks(included_checks, excluded_checks, enabled_checks); end

    # Compare JSON output from a previous scan and return the diff of the two scans
    #
    # @raise [ArgumentError]
    #
    # source://brakeman//lib/brakeman.rb#482
    def compare(options); end

    # source://brakeman//lib/brakeman.rb#172
    def config_file(custom_location, app_path); end

    # source://brakeman//lib/brakeman.rb#477
    def debug(message); end

    # source://brakeman//lib/brakeman.rb#587
    def debug=(val); end

    # Default set of options
    #
    # source://brakeman//lib/brakeman.rb#179
    def default_options; end

    # Output configuration to YAML
    #
    # source://brakeman//lib/brakeman.rb#337
    def dump_config(options); end

    # source://brakeman//lib/brakeman.rb#363
    def ensure_latest; end

    # source://brakeman//lib/brakeman.rb#543
    def filter_warnings(tracker, options); end

    # Determine output formats based on options[:output_formats]
    # or options[:output_files]
    #
    # source://brakeman//lib/brakeman.rb#209
    def get_output_formats(options); end

    # Returns an array of alert fingerprints for any ignored warnings without
    # notes found in the specified ignore file (if it exists).
    #
    # source://brakeman//lib/brakeman.rb#533
    def ignore_file_entries_with_empty_notes(file); end

    # Output list of checks (for `-k` option)
    #
    # source://brakeman//lib/brakeman.rb#315
    def list_checks(options); end

    # source://brakeman//lib/brakeman.rb#505
    def load_brakeman_dependency(name, allow_fail = T.unsafe(nil)); end

    # Load options from YAML file
    #
    # source://brakeman//lib/brakeman.rb#124
    def load_options(line_options); end

    # source://brakeman//lib/brakeman.rb#473
    def notify(message); end

    # source://brakeman//lib/brakeman.rb#591
    def quiet=(val); end

    # Rescan a subset of files in a Rails application.
    #
    # A full scan must have been run already to use this method.
    # The returned Tracker object from Brakeman.run is used as a starting point
    # for the rescan.
    #
    # Options may be given as a hash with the same values as Brakeman.run.
    # Note that these options will be merged into the Tracker.
    #
    # This method returns a RescanReport object with information about the scan.
    # However, the Tracker object will also be modified as the scan is run.
    #
    # source://brakeman//lib/brakeman.rb#462
    def rescan(tracker, files, options = T.unsafe(nil)); end

    # Run Brakeman scan. Returns Tracker object.
    #
    # Options:
    #
    #  * :app_path - path to root of Rails app (required)
    #  * :additional_checks_path - array of additional directories containing additional out-of-tree checks to run
    #  * :additional_libs_path - array of additional application relative lib directories (ex. app/mailers) to process
    #  * :assume_all_routes - assume all methods are routes (default: true)
    #  * :check_arguments - check arguments of methods (default: true)
    #  * :collapse_mass_assignment - report unprotected models in single warning (default: false)
    #  * :combine_locations - combine warning locations (default: true)
    #  * :config_file - configuration file
    #  * :escape_html - escape HTML by default (automatic)
    #  * :exit_on_error - only affects Commandline module (default: true)
    #  * :exit_on_warn - only affects Commandline module (default: true)
    #  * :github_repo - github repo to use for file links (user/repo[/path][@ref])
    #  * :highlight_user_input - highlight user input in reported warnings (default: true)
    #  * :html_style - path to CSS file
    #  * :ignore_model_output - consider models safe (default: false)
    #  * :index_libs - add libraries to call index (default: true)
    #  * :interprocedural - limited interprocedural processing of method calls (default: false)
    #  * :message_limit - limit length of messages
    #  * :min_confidence - minimum confidence (0-2, 0 is highest)
    #  * :output_files - files for output
    #  * :output_formats - formats for output (:to_s, :to_tabs, :to_csv, :to_html)
    #  * :parallel_checks - run checks in parallel (default: true)
    #  * :parser_timeout - set timeout for parsing an individual file (default: 10 seconds)
    #  * :print_report - if no output file specified, print to stdout (default: false)
    #  * :quiet - suppress most messages (default: true)
    #  * :rails3 - force Rails 3 mode (automatic)
    #  * :rails4 - force Rails 4 mode (automatic)
    #  * :rails5 - force Rails 5 mode (automatic)
    #  * :rails6 - force Rails 6 mode (automatic)
    #  * :report_routes - show found routes on controllers (default: false)
    #  * :run_checks - array of checks to run (run all if not specified)
    #  * :safe_methods - array of methods to consider safe
    #  * :sql_safe_methods - array of sql sanitization methods to consider safe
    #  * :skip_libs - do not process lib/ directory (default: false)
    #  * :skip_vendor - do not process vendor/ directory (default: true)
    #  * :skip_checks - checks not to run (run all if not specified)
    #  * :absolute_paths - show absolute path of each file (default: false)
    #  * :summary_only - only output summary section of report for plain/table (:summary_only, :no_summary, true)
    #
    # Alternatively, just supply a path as a string.
    #
    # source://brakeman//lib/brakeman.rb#76
    def run(options); end

    # Run a scan. Generally called from Brakeman.run instead of directly.
    #
    # source://brakeman//lib/brakeman.rb#372
    def scan(options); end

    # Sets up options for run, checks given application path
    #
    # source://brakeman//lib/brakeman.rb#90
    def set_options(options); end

    private

    # source://brakeman//lib/brakeman.rb#262
    def get_formats_from_output_files(output_files); end

    # source://brakeman//lib/brakeman.rb#228
    def get_formats_from_output_format(output_format); end

    # source://brakeman//lib/brakeman.rb#298
    def get_github_url(options); end

    # source://brakeman//lib/brakeman.rb#416
    def write_report_to_files(tracker, output_files); end

    # source://brakeman//lib/brakeman.rb#434
    def write_report_to_formats(tracker, output_formats); end
  end
end

# source://brakeman//lib/brakeman.rb#160
Brakeman::CONFIG_FILES = T.let(T.unsafe(nil), Array)

# source://brakeman//lib/brakeman.rb#595
class Brakeman::DependencyError < ::RuntimeError; end

# Exit code returned when an ignored warning has no note and
# --ensure-ignore-notes is set
#
# source://brakeman//lib/brakeman.rb#25
Brakeman::Empty_Ignore_Note_Exit_Code = T.let(T.unsafe(nil), Integer)

# Exit code returned when errors were found and the --exit-on-error
# option is set
#
# source://brakeman//lib/brakeman.rb#21
Brakeman::Errors_Found_Exit_Code = T.let(T.unsafe(nil), Integer)

# source://brakeman//lib/brakeman.rb#598
class Brakeman::MissingChecksError < ::RuntimeError; end

# Exit code returned when user requests non-existent checks
#
# source://brakeman//lib/brakeman.rb#17
Brakeman::Missing_Checks_Exit_Code = T.let(T.unsafe(nil), Integer)

# source://brakeman//lib/brakeman.rb#597
class Brakeman::NoApplication < ::RuntimeError; end

# source://brakeman//lib/brakeman.rb#596
class Brakeman::NoBrakemanError < ::RuntimeError; end

# Exit code returned when no Rails application is detected
#
# source://brakeman//lib/brakeman.rb#11
Brakeman::No_App_Found_Exit_Code = T.let(T.unsafe(nil), Integer)

# Exit code returned when brakeman was outdated
#
# source://brakeman//lib/brakeman.rb#14
Brakeman::Not_Latest_Version_Exit_Code = T.let(T.unsafe(nil), Integer)

# source://brakeman//lib/brakeman/version.rb#2
Brakeman::Version = T.let(T.unsafe(nil), String)

# This exit code is used when warnings are found and the --exit-on-warn
# option is set
#
# source://brakeman//lib/brakeman.rb#8
Brakeman::Warnings_Found_Exit_Code = T.let(T.unsafe(nil), Integer)
