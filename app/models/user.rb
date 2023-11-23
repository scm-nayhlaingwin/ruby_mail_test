class User < ApplicationRecord
    
  # validation for date_of_birth
  validates :name, presence: { message: "Name cannot be empty" }
  # validation for Address
  validates :email, presence: { message: "Email cannot be empty" }
end
