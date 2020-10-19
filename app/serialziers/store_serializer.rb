class StoreSerializer

  def self.stores_with_books(stores)
    {
      "data": stores.map do |store|
        {
          "type": "store",
          "id": store.id,
          "attributes": {
            "name": store.name
          },
          "relationships": {
            "books": store.books.map do |book|
              {
                "data": {
                  "type": "book",
                  "id": book.id
                }
              }
            end
          }
        }
      end
    }
  end
end
