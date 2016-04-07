class Peo < ActiveRecord::Base
  belongs_to :zhuangye
  belongs_to :xueli
  belongs_to :zhicheng
  belongs_to :zcz
  has_many :jianlis
  has_many :peoatts,dependent: :destroy

  has_attached_file :schoolgra, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :schoolgra
  has_attached_file :xuelicertification, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :xuelicertification
  has_attached_file :zhichencertification, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :zhichencertification
  has_attached_file :zigecertification, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :zigecertification
  has_attached_file :anquancertification, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :anquancertification
  has_attached_file :gongzhenmaterial, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :gongzhenmaterial
  has_attached_file :shenfencertification, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :shenfencertification
  has_attached_file :other, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :other

end
