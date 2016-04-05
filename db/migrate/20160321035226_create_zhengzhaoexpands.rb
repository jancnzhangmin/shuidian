class CreateZhengzhaoexpands < ActiveRecord::Migration
  def change
    create_table :zhengzhaoexpands do |t|
      t.string :keyword

      t.timestamps null: false
    end
  end
end
