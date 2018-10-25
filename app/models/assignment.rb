class Assignment < ApplicationRecord
  belongs_to :soldier
  belongs_to :planet

  validates :operation_code, presence: true
end
