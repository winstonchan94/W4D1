# == Schema Information
#
# Table name: users
#
#  id       :integer          not null, primary key
#  username :string
#

class User < ApplicationRecord
  validates :username, presence: true

  has_many :artwork_shares,
  foreign_key: :viewer_id,
  class_name: :ArtworkShare

  has_many :shared_artworks,
  through: :artwork_shares,
  source: :artwork

end
