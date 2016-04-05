class CreatePeos < ActiveRecord::Migration
  def change
    create_table :peos do |t|
      t.integer :zhuangye_id
      t.integer :xueli_id
      t.integer :zhicheng_id
      t.string :name
      t.integer :sex
      t.datetime :birthday
      t.datetime :worktime
      t.string :school
      t.text :another

      t.timestamps null: false
    end
  end
end
