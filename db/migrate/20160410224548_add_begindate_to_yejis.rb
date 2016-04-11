class AddBegindateToYejis < ActiveRecord::Migration
  def change
    add_column :yejis, :begindate, :datetime
    add_column :yejis, :enddate, :datetime
  end
end
