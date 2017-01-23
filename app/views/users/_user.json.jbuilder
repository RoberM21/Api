json.extract! user, :id, :email, :token, :password_digest, :confirm_token, :email_confirmed, :created_at, :updated_at
json.url user_url(user, format: :json)