class Planet < ApplicationRecord
    has_many :assignments
    has_many :soldiers, through: :assignments

    validates :name, presence: true  
end
