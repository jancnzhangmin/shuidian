class AddAttachmentJianjiecompanyToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :jianjiecompany
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :jianjiecompany
  end
end
