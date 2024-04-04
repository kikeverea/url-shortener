class Link < ApplicationRecord
  has_many :views, dependent: :destroy
  scope :recent_first, -> { order(created_at: :desc) }

  validates :url, presence: true

  attribute :views_count, default: 0

  def to_param
    ShortCode.encode(id)
  end

  def self.find(short_code)
    super ShortCode.decode(short_code)
  end

  def domain
    URI(url).host
  rescue URI::InvalidURIError
    # Ignored
  end
end
