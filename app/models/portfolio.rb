class Portfolio < ApplicationRecord
    belongs_to :user
    default_scope -> { order(created_at: :desc) }
    validates :title, presence: true, length: {maximum:50}
    validates :description, presence: true, length: {maximum:255}
    validates :url, presence: true
    validates :user_id, presence: true
end
