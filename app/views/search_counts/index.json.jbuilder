json.array!(@search_counts) do |search_count|
  json.extract! search_count, :id, :counter
  json.url search_count_url(search_count, format: :json)
end
