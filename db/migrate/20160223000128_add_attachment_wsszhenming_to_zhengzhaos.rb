class AddAttachmentWsszhenmingToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :wsszhenming
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :wsszhenming
  end
end
