class Video < ApplicationRecord
  belongs_to :user
  has_many :transactions
  mount_uploader :video, VideoUploader
end
