class AddAttachmentZhichencertificationToPeos < ActiveRecord::Migration
  def self.up
    change_table :peos do |t|
      t.attachment :zhichencertification
    end
  end

  def self.down
    remove_attachment :peos, :zhichencertification
  end
end
