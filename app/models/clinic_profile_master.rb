class ClinicProfileMaster < ActiveRecord::Base
  belongs_to :clinic
  belongs_to :clinicbranches
  attr_accessible :about, :packages, :photo1, :photo2, :photo3, :photo4, :photo5, :services,:clinic_id,:clinicbranch_id

mount_uploader  :photo1, ImageUploader
mount_uploader  :photo2, ImageUploader
mount_uploader  :photo3, ImageUploader
mount_uploader  :photo4, ImageUploader
mount_uploader  :photo5, ImageUploader
  validates :clinic_id,:presence => true
  validates :clinicbranch_id, :presence => true
  validates :about,:services, :presence => true
end
