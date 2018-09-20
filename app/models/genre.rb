class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  def slug
  slug = self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end

  def self.find_by_slug(slug)
    #find artist name by their slug
    @found_genre = self.all.find do |genre|
      genre.slug == slug
    end
    @found_genre
  end
end
