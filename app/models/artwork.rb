# == Schema Information
#
# Table name: artworks
#
#  id        :integer          not null, primary key
#  title     :string           not null
#  image_url :string           not null
#  artist_id :integer          not null
#

class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true
  validates :title, uniqueness: {scope: :artist_id}

  belongs_to :artist,
  foreign_key: :artist_id,
  class_name: :User

  has_many :shares,
  foreign_key: :artwork_id,
  class_name: :ArtworkShare

  has_many :viewers,
  through: :shares,
  source: :viewer

  


end
