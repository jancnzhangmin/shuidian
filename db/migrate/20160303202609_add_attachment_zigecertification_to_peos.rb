class AddAttachmentZigecertificationToPeos < ActiveRecord::Migration
  def self.up
    change_table :peos do |t|
      t.attachment :zigecertification
    end
  end

  def self.down
    remove_attachment :peos, :zigecertification
  end
end
