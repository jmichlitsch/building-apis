class Api::V1::StoresController < ApplicationController
  def index
     render json: StoreSerializer.new(Store.all, {include: [:books]}).serialized_json
  end

  def show
    render json: StoreSerializer.new(Store.find(params[:id]), {include: [:books]}).serialized_json
  end
end
