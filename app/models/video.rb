class Video < ApplicationRecord
  belongs_to :user
  has_many :transactions
  mount_uploader :video, VideoUploader

  include PgSearch

  pg_search_scope :search_everything,
    against: [ :title, :description, :tags, :location, :duration ],
    using: {
      tsearch: { prefix: true }
    }
end
