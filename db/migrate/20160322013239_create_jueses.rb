class CreateJueses < ActiveRecord::Migration
  def change
    create_table :jueses do |t|
      t.string :juese

      t.timestamps null: false
    end
  end
end
