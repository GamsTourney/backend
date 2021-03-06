Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    if Rails.env.development?
      origins '*'
    elsif Rails.env.production?
      origins 'glory-dev.herokuapp.com', 'app.gams2020.com'
    end
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
