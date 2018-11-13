class Item < ActiveRecord::Base
  # create validates
  validates   :price, :weight,      { numericality: {greater_than: 0}, 
                                    presence: true }
end
