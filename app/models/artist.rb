class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs


  #called on an instance
  def slug
    slug = self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end

  #called on a class
  def self.find_by_slug(slug)
    #find artist name by their slug
    @found_artist = self.all.find do |artist|
      artist.slug == slug
    end
    @found_artist
  end
end
