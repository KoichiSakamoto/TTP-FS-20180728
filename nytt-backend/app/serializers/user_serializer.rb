class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :balance
  has_one :portfolio
  has_many :stocks, through: :portfolio
end
