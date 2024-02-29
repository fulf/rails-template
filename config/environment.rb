# typed: false
# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

APP_VERSION = '0.0.1'
APP_NAME = Rails.application.config.session_options[:key].sub(/^_/, '').sub('_session', '')
APP_HUMAN_NAME = APP_NAME.humanize.split.map(&:capitalize).join(' ')
