class Category < ApplicationRecord
  has_many :tips, :challenges
end
