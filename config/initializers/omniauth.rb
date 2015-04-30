OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '965188683500698', '9a0f5e4952e85641c28664224d752cfb'
end