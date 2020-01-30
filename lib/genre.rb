class Genre
    attr_reader :name 
    @@all = []

    def initialize(genre_name)
        @name = genre_name 
        @@all << self 
    end

    def self.all
        @@all 
    end 

    def songs 
        Song.all.select do |x|
            x.genre == self
        end
    end 

    def artists 
        Song.all.select do |x|
            x.genre == self
        end.map do |y|
            y.artist 
        end 
    end 
end
