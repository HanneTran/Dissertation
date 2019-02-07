class Feature < ApplicationRecord
  belongs_to :question
  has_one :dementium
end

