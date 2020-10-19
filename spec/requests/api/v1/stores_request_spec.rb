require 'rails_helper'

describe 'Stores API' do
  it 'sends a list of stores' do
    create_list(:store, 3)

    get '/api/v1/stores'

    expect(response).to be_successful

    resp = JSON.parse(response.body, symbolize_names: true)

    expect(resp[:data].count).to eq(3)

    resp[:data].each do |store|
      expect(store).to have_key(:attributes)
      expect(store).to be_a(Hash)

      expect(store[:attributes]).to have_key(:id)
      expect(store[:attributes][:id]).to be_an(Integer)

      expect(store[:attributes]).to have_key(:name)
      expect(store[:attributes][:name]).to be_a(String)

      expect(store).to have_key(:relationships)
      expect(store).to be_a(Hash)

      expect(store[:relationships]).to have_key(:books)
      expect(store[:relationships]).to be_a(Hash)

      expect(store[:relationships][:books]).to have_key(:data)
      expect(store[:relationships][:books]).to be_a(Hash)

      books = store[:relationships][:books][:data]
      books.each do |book|
        expect(book).to have_key(:id)
        expect(book[:id]).to be_an(Integer)

        expect(book).to have_key(:type)
        expect(book[:type]).to eq("book")
      end
    end
  end
end
