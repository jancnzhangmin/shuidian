class AddAttachmentCwbaobiaoToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :cwbaobiao
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :cwbaobiao
  end
end
