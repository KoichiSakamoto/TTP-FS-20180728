class StockSerializer < ActiveModel::Serializer
  attributes :id, :tickername, :quantity, :portfolio_id
  belongs_to :portfolio
end
