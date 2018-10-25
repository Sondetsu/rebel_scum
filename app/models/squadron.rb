class Squadron < ApplicationRecord
    has_many :soldiers

    validates :name, presence: true
end
