class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :video, through :user
end
