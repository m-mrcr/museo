class Photograph

  attr_reader :artist_id,
              :year,
              :id,
              :name

  def initialize(attributes)
    @artist_id = attributes[:artist_id]
    @year = attributes[:year]
    @id = attributes[:id]
    @name = attributes[:name]
  end

end
