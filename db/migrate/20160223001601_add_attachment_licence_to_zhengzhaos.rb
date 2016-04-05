class AddAttachmentLicenceToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :licence
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :licence
  end
end
