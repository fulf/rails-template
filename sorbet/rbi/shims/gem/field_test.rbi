# typed: true

class ActionController::Base
  include FieldTest::Controller
end

class ActionMailer::Base
  include FieldTest::Mailer
end
