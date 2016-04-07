class AddSsdwIdToYejis < ActiveRecord::Migration
  def change
    add_column :yejis, :ssdw_id, :integer
  end
end
