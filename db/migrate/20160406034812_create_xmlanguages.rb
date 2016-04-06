class CreateXmlanguages < ActiveRecord::Migration
  def change
    create_table :xmlanguages do |t|
      t.string :language

      t.timestamps null: false
    end
  end
end
