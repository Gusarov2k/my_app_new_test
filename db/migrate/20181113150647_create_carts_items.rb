class CreateCartsItems < ActiveRecord::Migration
  def self.up
    create_table :carts_items, id: false do |t|
      t.integer   :cart_id
      t.integer   :item_id
    end
    
    add_index :carts_items, [:item_id, :cart_id]
    add_index :carts_items, [:cart_id, :item_id]

  end

  def self.down
    drop_table :carts_items
  end

end
