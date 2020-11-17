class Category < ApplicationRecord
  has_many :tips
  has_many :challenges
end
