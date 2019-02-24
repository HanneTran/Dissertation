class Dementium < ApplicationRecord
  belongs_to :feature
  validates :name, presence: true
end
