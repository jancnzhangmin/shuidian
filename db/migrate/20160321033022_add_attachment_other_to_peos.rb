class AddAttachmentOtherToPeos < ActiveRecord::Migration
  def self.up
    change_table :peos do |t|
      t.attachment :other
    end
  end

  def self.down
    remove_attachment :peos, :other
  end
end
