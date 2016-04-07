class CreateZhengzhaoatts < ActiveRecord::Migration
  def change
    create_table :zhengzhaoatts do |t|
      t.integer :zhengzhao_id
      t.string :keyword

      t.timestamps null: false
    end
  end
end
