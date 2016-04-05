class AddAttachmentGongzhenmaterialToPeos < ActiveRecord::Migration
  def self.up
    change_table :peos do |t|
      t.attachment :gongzhenmaterial
    end
  end

  def self.down
    remove_attachment :peos, :gongzhenmaterial
  end
end
