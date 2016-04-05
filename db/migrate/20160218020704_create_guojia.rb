class CreateGuojia < ActiveRecord::Migration
  def change
    create_table :guojia do |t|
      t.string :guojia

      t.timestamps null: false
    end
  end
end
