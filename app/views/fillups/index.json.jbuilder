json.array!(@fillups) do |fillup|
  json.extract! fillup, :id, :odometer, :price, :volume, :date, :missed, :partial
  json.url fillup_url(fillup, format: :json)
end
