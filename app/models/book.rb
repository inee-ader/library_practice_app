class Book < ApplicationRecord
    has_many :library_visits, dependent: :destroy
    has_many :beings, through: :library_visits
end
