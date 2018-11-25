class Stock < ApplicationRecord
  belongs_to :portfolio
  has_many :transactions
end
