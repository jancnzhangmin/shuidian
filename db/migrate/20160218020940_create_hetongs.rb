class CreateHetongs < ActiveRecord::Migration
  def change
    create_table :hetongs do |t|
      t.string :hetong

      t.timestamps null: false
    end
  end
end
