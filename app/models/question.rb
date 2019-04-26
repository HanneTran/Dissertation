# Author: Hanne Tran
# Date: 20.04.19
# Question has one-to-many relationship with Q table.
class Question < ApplicationRecord
  has_many :qs
end
