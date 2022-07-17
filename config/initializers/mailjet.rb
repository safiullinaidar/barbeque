Mailjet.configure do |config|
  config.api_key = Rails.application.credentials.mailjet_api_key
  config.secret_key = Rails.application.credentials.mailjet_secret_key
  config.default_from = Rails.application.credentials.mailjet_sender
  config.api_version = 'v3.1'
end
