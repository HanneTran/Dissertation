class Patient < ApplicationRecord
  has_many :questions
  has_one :note
  has_one :feature
  has_one :type
  
  validates :name, presence: true
end
