class Feature < ApplicationRecord
  validates :pause, :duration, :no_of_topics_changed, :empty_words, :variety_of_words, presence: true
  belongs_to :patient
  
end

