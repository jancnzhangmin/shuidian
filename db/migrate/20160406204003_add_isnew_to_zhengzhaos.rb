class AddIsnewToZhengzhaos < ActiveRecord::Migration
  def change
    add_column :zhengzhaos, :isnew, :integer
  end
end
