# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Mailkick::SubscriptionsController`.
# Please instead update this file by running `bin/tapioca dsl Mailkick::SubscriptionsController`.

class Mailkick::SubscriptionsController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::Turbo::DriveHelper
    include ::Turbo::FramesHelper
    include ::Turbo::IncludesHelper
    include ::Turbo::StreamsHelper
    include ::ActionView::Helpers::CaptureHelper
    include ::ActionView::Helpers::OutputSafetyHelper
    include ::ActionView::Helpers::TagHelper
    include ::Turbo::Streams::ActionHelper
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::Importmap::ImportmapTagsHelper
    include ::Hotwire::Livereload::LivereloadTagsHelper
    include ::Ransack::Helpers::FormHelper
    include ::ActionController::Base::HelperMethods

    sig { returns(T.untyped) }
    def opted_out?; end

    sig { returns(T.untyped) }
    def subscribe_url; end

    sig { returns(T.untyped) }
    def subscribed?; end

    sig { returns(T.untyped) }
    def unsubscribe_url; end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
