class Patient < ApplicationRecord
  has_many :questions
  has_one :note
  has_one :feature
  has_one :category
  has_one :q1
  has_one :q2
  has_one :q3
  has_one :q4
  has_one :q5
  has_one :q6
  has_one :q7
  has_one :q8
  has_one :q9
  has_one :q10
  has_one :q11
  has_one :q12
  
  
  
  validates :name, :category, presence: true
end
