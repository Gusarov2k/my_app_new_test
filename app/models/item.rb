class Item < ActiveRecord::Base
  # create validates
  validates   :price, :weight,      { numericality: {greater_than: 0}, 
                                    presence: true }

  has_and_belongs_to_many   :carts

  has_many :positions
  has_many :carts, through: :positions

  has_many :images, as: :imageable
end
