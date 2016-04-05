class AddAttachmentChenbaocertificationToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :chenbaocertification
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :chenbaocertification
  end
end
