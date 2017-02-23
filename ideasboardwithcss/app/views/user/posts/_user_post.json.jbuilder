json.extract! user_post, :id, :title, :content, :created_at, :updated_at
json.url user_post_url(user_post, format: :json)