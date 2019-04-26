# Author: Hanne Tran
# Date: 20.04.19
# Note has a one-to-one relationship with Patient table.
class Note < ApplicationRecord
  belongs_to :patient
end
 
