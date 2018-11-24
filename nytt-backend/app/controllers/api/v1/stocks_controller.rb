class Api::V1::StocksController < ApplicationController
  before_action :find_stock, only: [:show]

  def index
    render json: {stocks: Stock.all}
  end

  def new
    @stock = Stock.create
  end

  def show
    render json: @stock
  end

  def create
    @stock = Stock.create(stock_params)
    render json: {stock: @stock}
  end


  private

  #params method to prevent weird injections from frontend. Only allow parameters
  #required for model initialization.
  def stock_params
    params.permit(:tickername, :stock_id)
  end

  def find_stock
    @stock = Stock.find(params[:id])
  end
end
