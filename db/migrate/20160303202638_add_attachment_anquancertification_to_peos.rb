class AddAttachmentAnquancertificationToPeos < ActiveRecord::Migration
  def self.up
    change_table :peos do |t|
      t.attachment :anquancertification
    end
  end

  def self.down
    remove_attachment :peos, :anquancertification
  end
end
