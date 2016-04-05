class AddAttachmentExpandToZhengzhaoexpands < ActiveRecord::Migration
  def self.up
    change_table :zhengzhaoexpands do |t|
      t.attachment :expand
    end
  end

  def self.down
    remove_attachment :zhengzhaoexpands, :expand
  end
end
