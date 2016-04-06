class AddIsnewToYejis < ActiveRecord::Migration
  def change
    add_column :yejis, :isnew, :integer
  end
end
