class Being < ApplicationRecord
    has_many :library_visits, dependent: :destroy
    has_many :books, through: :library_visits

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :catchphrase, presence: true
    validates :bio, length: { minimum: 50 }
end
