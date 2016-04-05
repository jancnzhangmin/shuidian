class CreateYejiatts < ActiveRecord::Migration
  def change
    create_table :yejiatts do |t|
      t.text :content
      t.string :keyword
      t.integer :yeji_id
      t.integer :langguage_id

      t.timestamps null: false
    end
  end
end
