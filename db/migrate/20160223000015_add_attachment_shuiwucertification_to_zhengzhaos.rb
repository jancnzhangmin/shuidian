class AddAttachmentShuiwucertificationToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :shuiwucertification
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :shuiwucertification
  end
end
