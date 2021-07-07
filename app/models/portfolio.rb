class Portfolio < ApplicationRecord
    belongs_to :user
    default_scope -> { order(created_at: :desc) }
    validates :title, presence: true, length: {maximum:50}
    validates :description, presence: true, length: {maximum:255}
    VALID_URL_REGEX = /\A#{URI::regexp(%w(http https))}\z/
    validates :url, presence: true, format: { with: VALID_URL_REGEX }
    validates :user_id, presence: true
end
