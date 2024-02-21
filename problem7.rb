class Writer
    def create
      "I am writing the next Game of Thrones."
    end
end
  
class Painter
    def create
      "I am painting a new Mona Lisa."
    end
end
  
def showcase_talent(artists)
    artists.each do |artist|
      puts artist.create
    end
end

writer = Writer.new
painter = Painter.new
showcase_talent([writer, painter])
