class CreatePeoatts < ActiveRecord::Migration
  def change
    create_table :peoatts do |t|
      t.integer :peo_id
      t.string :keyword

      t.timestamps null: false
    end
  end
end
