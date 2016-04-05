class CreateHuojiangzhenshus < ActiveRecord::Migration
  def change
    create_table :huojiangzhenshus do |t|
      t.integer :zhengzhao_id


      t.timestamps null: false
    end
  end
end
