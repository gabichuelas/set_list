class Artist < ApplicationRecord
  validates_presence_of :name
  has_many :songs
  # now :songs becomes a method you can use
  # @artist.songs => [song 1, song2, etc]
end
