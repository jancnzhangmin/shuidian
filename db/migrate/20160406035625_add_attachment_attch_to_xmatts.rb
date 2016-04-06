class AddAttachmentAttchToXmatts < ActiveRecord::Migration
  def self.up
    change_table :xmatts do |t|
      t.attachment :attch
    end
  end

  def self.down
    remove_attachment :xmatts, :attch
  end
end
