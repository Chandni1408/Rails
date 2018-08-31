json.extract! user_datum, :id, :fname, :lname, :mobile, :email, :created_at, :updated_at
json.url user_datum_url(user_datum, format: :json)
