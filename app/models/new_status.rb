class NewStatus < ApplicationRecord
  has_many :new_discriptions, dependent: :restrict_with_error 
    
end
