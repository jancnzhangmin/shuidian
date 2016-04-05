class CreateCouns < ActiveRecord::Migration
  def change
    create_table :couns do |t|
      t.string :guojia

      t.timestamps null: false
    end
  end
end
