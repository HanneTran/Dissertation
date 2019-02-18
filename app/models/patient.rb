class Patient < ApplicationRecord
  has_many :questions
  has_one :note
  
  validates :name, presence: true
end
