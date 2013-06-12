class Clinic < ActiveRecord::Base
  attr_accessible :id, :name
  validates :name, :presence => true
  has_many :doctors, :dependent => :destroy
end
