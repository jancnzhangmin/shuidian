class CreateZczzies < ActiveRecord::Migration
  def change
    create_table :zczzies do |t|
      t.integer :peo_id
      t.string :zczzy
      t.timestamps null: false
    end
  end
end
