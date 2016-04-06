class Xmjianli < ActiveRecord::Base
  has_many :xmatts
  has_many :xmcouns
  has_many :xmlanguages
end
