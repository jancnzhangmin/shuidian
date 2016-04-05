class CreateZhengzhaos < ActiveRecord::Migration
  def change
    create_table :zhengzhaos do |t|
      t.string :namecompany

      t.text :another

      t.timestamps null: false
    end
  end
end
