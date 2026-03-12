Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:4000', 'http://127.0.0.1:4000'
    resource '/csrf_token', headers: :any, methods: [:get, :options], credentials: true
    resource '/issues*', headers: :any, methods: [:post, :options], credentials: true
    resource '/cameo_comment*', headers: :any, methods: [:post, :get, :options], credentials: true
  end
end
