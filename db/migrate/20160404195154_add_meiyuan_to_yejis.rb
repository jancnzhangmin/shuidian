class AddMeiyuanToYejis < ActiveRecord::Migration
  def change
    add_column :yejis, :meiyuan, :float
  end
end
