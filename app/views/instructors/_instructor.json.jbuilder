json.extract! instructor, :id, :last, :middle, :first, :email, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
