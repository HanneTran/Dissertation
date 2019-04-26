# Author: Hanne Tran
# Date: 20.04.19
# Category has a one-to-one relationship with Patient table.
class Category < ApplicationRecord
  belongs_to :patient
end
