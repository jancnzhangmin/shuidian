class CreateYejiattches < ActiveRecord::Migration
  def change
    create_table :yejiattches do |t|
      t.text :content
      t.string :keyword
      t.integer :yeji_id
      t.integer :language_id

      t.timestamps null: false
    end
  end
end
