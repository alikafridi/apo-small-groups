json.array!(@pledges) do |pledge|
  json.extract! pledge, :id, :name, :smallGroup, :killsWeek, :diedWeek, :killsTotal, :deathsTotal
  json.url pledge_url(pledge, format: :json)
end
