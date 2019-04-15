class Guest

  attr_reader :name, :money, :favourite_song

def initialize(name, money, favourite_song)
  @name = name
  @money = money
  @favourite_song = favourite_song
end

  def respond_to_song
    @room1.song_list.each { |song| song }
     if song == @favourite_song
       return "yay"
     else
       return "noo"
     end
   end

end
