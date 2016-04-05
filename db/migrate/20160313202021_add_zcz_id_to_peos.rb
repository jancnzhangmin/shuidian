class AddZczIdToPeos < ActiveRecord::Migration
  def change
    add_column :peos, :zcz_id, :integer
  end
end
