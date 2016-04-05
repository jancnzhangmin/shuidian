class AddAttachmentSchoolgraToPeos < ActiveRecord::Migration
  def self.up
    change_table :peos do |t|
      t.attachment :schoolgra
    end
  end

  def self.down
    remove_attachment :peos, :schoolgra
  end
end
