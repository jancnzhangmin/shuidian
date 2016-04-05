class CreateXuelis < ActiveRecord::Migration
  def change
    create_table :xuelis do |t|
      t.string :xueli

      t.timestamps null: false
    end
  end
end
