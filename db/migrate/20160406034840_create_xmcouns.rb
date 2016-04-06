class CreateXmcouns < ActiveRecord::Migration
  def change
    create_table :xmcouns do |t|
      t.string :coun

      t.timestamps null: false
    end
  end
end
