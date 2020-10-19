FactoryBot.define do
  factory :store_book do
    store { store.id }
    book { book.id }
    book_price { rand(100..1000) }
    quantity { rand(1..10) }
  end
end
