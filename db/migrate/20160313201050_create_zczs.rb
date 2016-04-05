class CreateZczs < ActiveRecord::Migration
  def change
    create_table :zczs do |t|
      t.integer :peo_id
      t.string :zcz

      t.timestamps null: false
    end
  end
end
