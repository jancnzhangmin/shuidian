class AddAttachmentDengjicertificationToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :dengjicertification
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :dengjicertification
  end
end
