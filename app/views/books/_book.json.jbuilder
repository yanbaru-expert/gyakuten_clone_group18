json.extract! book, :id, :title, :company, :created_at, :updated_at
json.url book_url(book, format: :json)
