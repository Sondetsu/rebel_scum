class Soldier < ApplicationRecord
  belongs_to :squadron

  has_many :assignments
  has_many :planets, through: :assignments

  validates :name, presence: true
  validates :age, numericality: { only_integer: true }
end
