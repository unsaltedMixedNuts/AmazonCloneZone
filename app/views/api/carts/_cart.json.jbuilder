json.(cart, :id, :created_at, :updated_at)

items ||= nil
unless items.nil?
  json.items(items) do |item|
    json.partial!("api/items/item", item: item)
  end
end
