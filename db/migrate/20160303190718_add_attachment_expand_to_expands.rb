class AddAttachmentExpandToExpands < ActiveRecord::Migration
  def self.up
    change_table :expands do |t|
      t.attachment :expand
    end
  end

  def self.down
    remove_attachment :expands, :expand
  end
end
