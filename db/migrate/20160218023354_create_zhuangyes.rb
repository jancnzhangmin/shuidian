class CreateZhuangyes < ActiveRecord::Migration
  def change
    create_table :zhuangyes do |t|
      t.string :zhuangye

      t.timestamps null: false
    end
  end
end
