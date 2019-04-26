# Author: Hanne Tran
# Date: 20.04.19
# All the features needs to be present.
# Feature has a one-to-one relationship with Patient table.
class Feature < ApplicationRecord
  validates :pause, :duration, :no_of_topics_changed, :empty_words, :variety_of_words, presence: true
  belongs_to :patient
  
end

