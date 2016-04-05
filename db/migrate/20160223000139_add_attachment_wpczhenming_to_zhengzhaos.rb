class AddAttachmentWpczhenmingToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :wpczhenming
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :wpczhenming
  end
end
