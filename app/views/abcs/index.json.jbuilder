json.array!(@abcs) do |abc|
  json.extract! abc, :id, :num, :name
  json.url abc_url(abc, format: :json)
end
