class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      # t.references  :user
      t.integer   :user_id
    end
  end
end
