class AddAttachmentOrgcertificationToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :orgcertification
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :orgcertification
  end
end
