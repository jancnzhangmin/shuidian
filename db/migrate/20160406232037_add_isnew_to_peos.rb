class AddIsnewToPeos < ActiveRecord::Migration
  def change
    add_column :peos, :isnew, :integer
  end
end
