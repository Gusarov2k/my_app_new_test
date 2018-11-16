class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer   :imageable_id
      t.string    :imageble_type
      t.timestamps
    end
  end
end
