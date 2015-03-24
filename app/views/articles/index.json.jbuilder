json.array!(@articles) do |article|
  json.extract! article, :id, :url, :title, :date, :html_body
  json.url article_url(article, format: :json)
end
