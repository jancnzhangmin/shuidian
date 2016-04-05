class AddAttachmentZhenshuToHuojiangzhenshus < ActiveRecord::Migration
  def self.up
    change_table :huojiangzhenshus do |t|
      t.attachment :zhenshu
    end
  end

  def self.down
    remove_attachment :huojiangzhenshus, :zhenshu
  end
end
