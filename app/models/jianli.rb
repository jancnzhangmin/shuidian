class Jianli < ActiveRecord::Base
  belongs_to :peo
  has_attached_file :jianli, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :jianli
end
