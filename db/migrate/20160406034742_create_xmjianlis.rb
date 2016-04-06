class CreateXmjianlis < ActiveRecord::Migration
  def change
    create_table :xmjianlis do |t|
      t.string :name
      t.integer :xmlanguage_id
      t.integer :xmcoun_id
      t.integer :isnew

      t.timestamps null: false
    end
  end
end
