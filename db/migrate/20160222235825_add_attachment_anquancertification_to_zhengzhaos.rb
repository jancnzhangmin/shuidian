class AddAttachmentAnquancertificationToZhengzhaos < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaos do |t|
      t.attachment :anquancertification
    end
  end

  def self.down
    remove_attachment :zhengzhaos, :anquancertification
  end
end
