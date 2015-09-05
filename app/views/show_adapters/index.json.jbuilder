json.array!(@show_adapters) do |show_adapter|
  json.extract! show_adapter, :id
  json.url show_adapter_url(show_adapter, format: :json)
end
