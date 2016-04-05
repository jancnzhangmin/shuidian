class Huojiangzhenshu < ActiveRecord::Base
  belongs_to :zhengzhao
  has_attached_file :zhenshu, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :zhenshu
end
