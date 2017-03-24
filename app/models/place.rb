class Place < ApplicationRecord
    belongs_to :user
    has_many :coomments
    
    geocoded_by :address
    after_validation :geocode
    
    validates :name, presence: true, length: { minimum: 3 }
    validates :address, :description, presence: true, length: { minimum: 10 }
end
