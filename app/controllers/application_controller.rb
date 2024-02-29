# typed: true
# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  impersonates :user
end
