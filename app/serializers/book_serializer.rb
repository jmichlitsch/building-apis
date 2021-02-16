class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :author, :genre, :summary, :number_sold
end
