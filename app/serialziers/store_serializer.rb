class StoreSerializer

  def self.stores_with_books(stores)
    {
      "data": stores.map do |store|
        {
          "type": "store",
          "id": store.id,
          "attributes": {
            "id": store.id,
            "name": store.name
          },
          "relationships": {
            "books": {
              "data": store.books.map do |book|
                {
                  "id": book.id,
                  "type": "book"
                }
              end
            }
          }
        }
      end
    }
  end
end
