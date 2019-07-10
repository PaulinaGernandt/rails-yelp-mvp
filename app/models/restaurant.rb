class Restaurant < ApplicationRecord
  has_many :reviews, dependant: :destroy
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]


  validates :name, presence: true
  validates :adress, presence: true
  validates :category, presence: true

  validates :category, inclusion: { in: CATEGORIES }


  #validates :phone_number, text:

end
