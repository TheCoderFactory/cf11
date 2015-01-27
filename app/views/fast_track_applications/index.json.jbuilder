json.array!(@fast_track_applications) do |fast_track_application|
  json.extract! fast_track_application, :id, :first_name, :last_name, :city, :country, :email, :age, :gender, :one_line, :reason, :info, :passion, :experience, :challenge, :special, :links, :referral, :visa, :programme_choice
  json.url fast_track_application_url(fast_track_application, format: :json)
end
