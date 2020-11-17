class Category < ApplicationRecord
  has_many :tips, :challenges
  CATEGORIES = ["Bathroom", "Daily", "Energy", "Food", "Shopping", "Transports"]
  validation :name, inclusion:{in:CATEGORIES}
end
