Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://model.mtconnect.org/'
    resource '/csrf_token', headers: :any, methods: [:get, :options], credentials: true
    resource '/cameo_comment*', headers: :any, methods: [:post, :get, :options], credentials: true
  end
end
