class AddAttachmentAttchToZhengzhaoatts < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaoatts do |t|
      t.attachment :attch
    end
  end

  def self.down
    remove_attachment :zhengzhaoatts, :attch
  end
end
