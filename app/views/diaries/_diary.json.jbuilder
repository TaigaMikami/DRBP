json.extract! diary, :id, :title, :content, :created_at, :updated_at
json.url diary_url(diary, format: :json)
