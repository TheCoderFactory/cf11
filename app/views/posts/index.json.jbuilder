json.array!(@posts) do |post|
  json.extract! post, :id, :title, :lead, :content, :image, :slug, :publish, :published_date, :author_id
  json.url post_url(post, format: :json)
end
