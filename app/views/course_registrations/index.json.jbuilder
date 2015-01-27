json.array!(@course_registrations) do |course_registration|
  json.extract! course_registration, :id, :course_id, :first_name, :last_name, :city, :country, :reason, :bio, :email
  json.url course_registration_url(course_registration, format: :json)
end
