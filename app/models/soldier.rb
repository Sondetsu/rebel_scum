class Soldier < ApplicationRecord
  belongs_to :squadron
  
  validates :name, presence: true
  validates :age, numericality: { only_integer: true }
end
