class Curator

  attr_reader :artists,
              :photographs

  def initialize(artists = [], photographs = [])
    @artists = artists
    @photographs = photographs
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      artist.id == id
    end
  end

  def find_photograph_by_id(id)
    @photographs.find do |photograph|
       photograph.id == id
     end
  end

  def find_photographs_by_artist(artist)
    artists_photographs = []
    @photographs.each do |photograph|
      if artist.id == photograph.artist_id
        artists_photographs << photograph
      end
    end
    artists_photographs
  end

  def artists_with_multiple_photographs
    artists_with_multiple_photographs = []
    @artists.each do |artist|
      if find_photographs_by_artist(artist).length += 1
        artist.name << artists_with_multiple_photographs
      end
    end
  end

  def photographs_taken_by_artist_from(country)


  end

end
