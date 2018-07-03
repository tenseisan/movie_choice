# Class for movies
class Film
  attr_reader :director, :title, :date

  def initialize(film_path)
    line = File.readlines(film_path).map(&:chomp)

    @director = line[0]
    @title = line[1]
    @date = line[2].to_i
  end

  def to_s
    "#{@director} - #{@title} (#{@date})"
  end
end
