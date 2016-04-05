class CreateJianlis < ActiveRecord::Migration
  def change
    create_table :jianlis do |t|
      t.integer :peo_id
      t.string :jianliname

      t.timestamps null: false
    end
  end
end
