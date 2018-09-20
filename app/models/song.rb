class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def slug
  slug = self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end

  def self.find_by_slug(slug)
    #find artist name by their slug
    @found_song = self.all.find do |song|
      song.slug == slug
    end
    @found_song
  end

end
