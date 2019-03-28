class Q8 < ApplicationRecord
  belongs_to :patient
  belongs_to :question
  has_many :patients
  has_one :question
end
