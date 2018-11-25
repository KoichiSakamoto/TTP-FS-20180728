class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :stock_id
  belongs_to :user
end
