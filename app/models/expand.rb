class Expand < ActiveRecord::Base
  belongs_to :yeji
  has_attached_file :expand, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :expand
end
