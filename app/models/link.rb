class Link < ApplicationRecord
  scope :recent_first, -> { order(created_at: :desc) }

  validates :url, presence: true

  attribute :views_count, default: 0
end
