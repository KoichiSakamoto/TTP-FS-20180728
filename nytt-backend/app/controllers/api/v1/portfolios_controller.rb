class Api::V1::PortfoliosController < ApplicationController
  before_action :find_portfolio, only: [:show]

  def index
    render json: {portfolios: Portfolio.all}
  end

  def new
    @portfolio = Portfolio.create
  end

  def show
    render json: @portfolio
  end

  def create
    @portfolio = Portfolio.create(portfolio_params)
    render json: {portfolio: @portfolio}
  end


  private

  #params method to prevent weird injections from frontend. Only allow parameters
  #required for model initialization.
  def portfolio_params
    params.permit(:user_id, :portfolio_id)
  end

  def find_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
