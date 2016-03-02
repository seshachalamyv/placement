json.array!(@questions) do |question|
  json.extract! question, :id, :test_id, :name
  json.url question_url(question, format: :json)
end
