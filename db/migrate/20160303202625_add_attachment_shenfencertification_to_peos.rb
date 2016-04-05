class AddAttachmentShenfencertificationToPeos < ActiveRecord::Migration
  def self.up
    change_table :peos do |t|
      t.attachment :shenfencertification
    end
  end

  def self.down
    remove_attachment :peos, :shenfencertification
  end
end
