class LabProfileMaster < ActiveRecord::Base
  belongs_to :lab
  belongs_to :labbranches
  attr_accessible :about, :packages, :photo1, :photo2, :photo3, :photo4, :photo5, :services,:lab_id,:labbranch_id

mount_uploader  :photo1, ImageUploader
mount_uploader  :photo2, ImageUploader
mount_uploader  :photo3, ImageUploader
mount_uploader  :photo4, ImageUploader
mount_uploader  :photo5, ImageUploader
  validates :lab_id,:presence => true
  validates :labbranch_id, :presence => true
  validates :about,:services, :presence => true
end
