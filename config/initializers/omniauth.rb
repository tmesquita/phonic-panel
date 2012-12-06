Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '393000530778491', '20ec8c32cc31667c201494a2e6f15c83'
end
