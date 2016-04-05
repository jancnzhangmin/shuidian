class AddJueseIdToYejis < ActiveRecord::Migration
  def change
    add_column :yejis, :juese_id, :integer
  end
end
