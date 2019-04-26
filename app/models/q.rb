# Author: Hanne Tran
# Date: 20.04.19
# Q table has one-to-many relationship with Patient and Question table.
class Q < ApplicationRecord
  belongs_to :patient
  belongs_to :question
  has_many :patients
  has_many :question
end
