class AddAttachmentJianliToJianlis < ActiveRecord::Migration
  def self.up
    change_table :jianlis do |t|
      t.attachment :jianli
    end
  end

  def self.down
    remove_attachment :jianlis, :jianli
  end
end
