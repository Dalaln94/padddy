json.array!(@items) do |item|
  json.extract! item, :id, :category, :manufacturer, :picture, :price, :name
  json.url item_url(item, format: :json)
end
