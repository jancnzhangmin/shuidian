class CreateXmatts < ActiveRecord::Migration
  def change
    create_table :xmatts do |t|
      t.string :name
      t.integer :xmjianli_id

      t.timestamps null: false
    end
  end
end
