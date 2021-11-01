class Gossip < ApplicationRecord
  belongs_to :user
  has_many :gossip_tag_joins
  has_many :tags, through: :gossip_tag_joins
  has_many :comments
  has_many :likes

  validates :title, presence: true
  validates :content, presence: true
end
