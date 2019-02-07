class Question < ApplicationRecord
  belongs_to :patient
  has_one :feature
end
