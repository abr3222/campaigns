json.extract! campaign, :id, :title, :purpose, :estimated_duration, :user_id, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
