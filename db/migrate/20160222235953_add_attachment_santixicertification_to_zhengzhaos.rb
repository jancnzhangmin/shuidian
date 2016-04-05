class AddAttachmentSantixicertificationToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :santixicertification
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :santixicertification
  end
end
