json.array!(@stat_emails) do |stat_email|
  json.extract! stat_email, :id
  json.url stat_email_url(stat_email, format: :json)
end
