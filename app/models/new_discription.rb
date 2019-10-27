class NewDiscription < ApplicationRecord
  belongs_to :new_status, foreign_key: :new_status_id

end
