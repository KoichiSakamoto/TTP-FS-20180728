class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  belongs_to :user
  has_many :stocks
end
