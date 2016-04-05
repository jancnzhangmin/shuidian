class CreateExpands < ActiveRecord::Migration
  def change
    create_table :expands do |t|
      t.string :expandname
      t.integer :yeji_id


      t.timestamps null: false
    end
  end
end
