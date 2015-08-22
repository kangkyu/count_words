json.array!(@texts) do |text|
  json.extract! text, :id, :title, :body, :count_hash
  json.url text_url(text, format: :json)
end
