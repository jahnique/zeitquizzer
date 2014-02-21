json.array!(@quizzers) do |quizzer|
  json.extract! quizzer, :id
  json.url quizzer_url(quizzer, format: :json)
end
