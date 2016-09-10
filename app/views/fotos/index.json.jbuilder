json.array!(@fotos) do |foto|
  json.extract! foto, :id, :title, :date, :content, :user_id, :username, :image
  json.url foto_url(foto, format: :json)
end
