OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '312025618909018', 'a0f865f1f446d3e0acf5690fc9034b4f'
end
