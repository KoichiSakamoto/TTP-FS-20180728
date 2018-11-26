class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_one :portfolio
  has_many :stocks, through: :portfolio
end
