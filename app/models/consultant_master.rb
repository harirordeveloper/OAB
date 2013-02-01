class ConsultantMaster < ActiveRecord::Base
  belongs_to :consultant
  has_many :doctor_timings, :dependent => :destroy
        accepts_nested_attributes_for :doctor_timings, :allow_destroy => :true, :reject_if => proc { |attrs|   attrs.all? { |k, v| v.blank? } }
  has_many :doctor_educations, :dependent => :destroy
        accepts_nested_attributes_for :doctor_educations, :allow_destroy => :true, :reject_if => proc { |attrs|   attrs.all? { |k, v| v.blank? } }
  

attr_accessible :awards_achievments, :charge,:image, :conformation, :degree, :expertise, :name, 
                  :professional_exp, :qualifications, :specialities, :total_exp,:doctor_timings_attributes,:doctor_educations_attributes

  validates :name, :presence => true
  validates :charge, :presence => true
end
