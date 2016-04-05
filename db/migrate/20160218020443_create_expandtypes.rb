class CreateExpandtypes < ActiveRecord::Migration
  def change
    create_table :expandtypes do |t|
      t.integer :expandtype

      t.timestamps null: false
    end
  end
end
