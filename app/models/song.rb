class Song < ApplicationRecord
  validates_presence_of :title
  belongs_to :artist
  # now :artist is a method you can call on Song
  # @song.artist => artist object
end
