class Q < ApplicationRecord
  belongs_to :patient
  belongs_to :question
  has_many :patients
  has_many :question
end
