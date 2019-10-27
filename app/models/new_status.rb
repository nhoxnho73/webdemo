class NewStatus < ApplicationRecord
  # has_many :new_discriptions, dependent: :restrict_with_error 
  scope :status, -> { where(:id => 1)}
  # Ex:- scope :active, -> {where(:active => true)}
    
end
