class Language < ActiveRecord::Base
  has_many :yejiatts
  has_attached_file :flag, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :flag
end
