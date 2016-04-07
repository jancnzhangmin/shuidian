class CreateSsdws < ActiveRecord::Migration
  def change
    create_table :ssdws do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
