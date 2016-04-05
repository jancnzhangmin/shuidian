class Yeji < ActiveRecord::Base
  belongs_to :hetong
  belongs_to :country
  belongs_to :projecttype
  has_many :expands
  has_many :yejiatts
  has_many :jueses
end
