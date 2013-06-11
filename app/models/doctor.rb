class Doctor < ActiveRecord::Base
  belongs_to :clinic
  attr_accessible :id, :name
  validate :name, :presence => true,
                  :uniqueness => true
  default_scope :order => 'doctors.created_at DESC'
end
