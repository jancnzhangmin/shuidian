class AddAttachmentAttchToPeoatts < ActiveRecord::Migration
  def self.up
    change_table :peoatts do |t|
      t.attachment :attch
    end
  end

  def self.down
    remove_attachment :peoatts, :attch
  end
end
