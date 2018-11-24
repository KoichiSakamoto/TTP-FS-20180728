class Api::V1::TransactionsController < ApplicationController
  before_action :find_transaction, only: [:show]

  def index
    render json: {transactions: Transaction.all}
  end

  def new
    @transaction = Transaction.create
  end

  def show
    render json: @transaction
  end

  def create
    @transaction = Transaction.create(transaction_params)
    render json: {transaction: @transaction}
  end


  private

  #params method to prevent weird injections from frontend. Only allow parameters
  #required for model initialization.
  def transaction_params
    params.permit(:user_id, :stock_id, :transaction_id)
  end

  def find_transaction
    @transaction = Transaction.find(params[:id])
  end
end
