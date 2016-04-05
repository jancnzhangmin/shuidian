class AddAttachmentZizhicertificationToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :zizhicertification
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :zizhicertification
  end
end
