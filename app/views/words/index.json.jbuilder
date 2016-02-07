json.array!(@words) do |word|
  json.extract! word, :id, :title, :meaning
  json.url word_url(word, format: :json)
end
