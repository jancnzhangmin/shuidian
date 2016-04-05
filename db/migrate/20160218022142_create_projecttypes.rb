class CreateProjecttypes < ActiveRecord::Migration
  def change
    create_table :projecttypes do |t|
      t.string :projecttype

      t.timestamps null: false
    end
  end
end
