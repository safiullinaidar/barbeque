class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.mailjet_sender
  layout "mailer"
end
