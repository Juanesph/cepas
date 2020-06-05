class Enologist < ApplicationRecord
  has_many :ratings
  has_many :contracts
  has_many :magazines, through: :contracts
  has_many :positions, through: :contracts
  has_many :wines, through: :ratings
end
