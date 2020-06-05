class Magazine < ApplicationRecord
  has_many :contracts
  has_many :enologists, through: :contracts
  has_many :positions, through: :contracts
end
