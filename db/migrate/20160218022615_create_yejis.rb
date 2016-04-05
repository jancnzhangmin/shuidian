class CreateYejis < ActiveRecord::Migration
  def change
    create_table :yejis do |t|
      t.integer :hetong_id
      t.integer :guojia_id
      t.integer :projecttype_id
      t.string :nameproject
      t.float :gongqi
      t.float :hetonge
      t.string :nameyezhu
      t.string :addressyezhu
      t.string :telyezhu
      t.float :fukunprice
      t.string :shishidanwei

      t.timestamps null: false
    end
  end
end
