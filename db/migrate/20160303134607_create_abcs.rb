class CreateAbcs < ActiveRecord::Migration
  def change
    create_table :abcs do |t|
      t.integer :num
      t.string :name

      t.timestamps null: false
    end
  end
end
