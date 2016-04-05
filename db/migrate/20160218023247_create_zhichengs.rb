class CreateZhichengs < ActiveRecord::Migration
  def change
    create_table :zhichengs do |t|
      t.string :zhicheng

      t.timestamps null: false
    end
  end
end
