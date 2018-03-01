class Video < ApplicationRecord
  belongs_to :user
  has_many :transactions
  mount_uploader :video, VideoUploader

  include PgSearch

  pg_search_scope :search_by_title_and_description,
    against: [ :title, :description, :tags, :location ],
    using: {
      tsearch: { prefix: true }
    }
end
