class Api::V1::StoresController < ApplicationController
  def index
    render json: StoreSerializer.stores_with_books(Store.all)
  end

  def show
    render json: Store.find(params[:id])
  end
end
