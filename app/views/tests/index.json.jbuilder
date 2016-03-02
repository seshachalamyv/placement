json.array!(@tests) do |test|
  json.extract! test, :id, :name, :correct, :wrong
  json.url test_url(test, format: :json)
end
