class Api::V1::OrdersController < ApplicationController
  def index
    render json: Order.all, each_serializer: ShortOrderSerializer
  end

  def show
    render json: Order.find(params[:id])
  end
end
