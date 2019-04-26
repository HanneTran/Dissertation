# Author: Hanne Tran
# Date: 20.04.19
# Patient table has many-to-many relationship with Q table.
# A patient's name and category need to be present to create a patient.
class Patient < ApplicationRecord
  has_one :note
  has_one :feature
  has_one :category
  has_many :qs

  validates :name, :category, presence: true
end
