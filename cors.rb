# This file is only for testing, nginx will add cors headers in production

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://127.0.0.1:3000/'
    resource '/csrf_token', headers: :any, methods: [:get, :options], credentials: true
    resource '/cameo_comment*', headers: :any, methods: [:post, :get, :options], credentials: true
  end
end
