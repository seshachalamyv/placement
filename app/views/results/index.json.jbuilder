json.array!(@results) do |result|
  json.extract! result, :id, :user_id, :test_id, :r, :rq
  json.url result_url(result, format: :json)
end
