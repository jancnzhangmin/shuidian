class AddAttachmentXuelicertificationToPeos < ActiveRecord::Migration
  def self.up
    change_table :peos do |t|
      t.attachment :xuelicertification
    end
  end

  def self.down
    remove_attachment :peos, :xuelicertification
  end
end
