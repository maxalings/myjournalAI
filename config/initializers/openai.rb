# config/initializers/openai.rb
OpenAI.configure do |config|
  config.access_token = ENV.fetch("OPENAI_ACCESS_TOKEN")
  config.uri_base = "http://localhost:11434/v1"
end
