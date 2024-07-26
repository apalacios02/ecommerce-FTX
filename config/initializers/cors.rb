Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000' # Adjust as needed
    resource '*',
      headers: :any,
      methods: [:get, :post, :options, :patch, :put, :delete],
      expose: ['Access-Control-Allow-Origin']
  end
end
