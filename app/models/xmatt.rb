class Xmatt < ActiveRecord::Base
  belongs_to :xmjianli
  has_attached_file :attch, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :attch
end