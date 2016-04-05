class AddZhengzhaoIdToZhengzhaoexpands < ActiveRecord::Migration
  def change
    add_column :zhengzhaoexpands, :zhengzhao_id, :integer
  end
end
