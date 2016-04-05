class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :zhuangye_id
      t.integer :xueli_id
      t.integer :zhicheng_id
      t.string :name
      t.integer :sex
      t.datetime :birthday
      t.datetime :worktime
      t.string :school
      t.string :schoolgra
      t.string :xuelicertification
      t.string :zhichencertification
      t.string :zigecertification
      t.string :shenfencertification
      t.string :anquancertification
      t.string :gongzhenmaterial
      t.text :another

      t.timestamps null: false
    end
  end
end
