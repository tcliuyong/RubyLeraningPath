class Song
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
  #可读属性
  def name
    @name
  end
  def artist
    @artist
  end
  def duration
    @duration
  end
  #可写属性
  def duration=(new_duration)
    @duration = new_duration
  end
end
song = Song.new("Bicyclops", "Fleck", 360)
song.duration = 100;
puts song.duration