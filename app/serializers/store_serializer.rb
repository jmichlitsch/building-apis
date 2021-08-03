class StoreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name

  has_many :books

  attribute :num_books do |object|
    object.books.count
  end

  attribute :active do
    true
  end
end
