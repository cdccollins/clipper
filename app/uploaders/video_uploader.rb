# app/uploaders/photo_uploader.rb
class VideoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # Remove everything else
end
