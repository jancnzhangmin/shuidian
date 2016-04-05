class AddAttachmentZhanchenToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :zhanchen
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :zhanchen
  end
end
