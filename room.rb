class Room

  attr_reader :price, :max_guests
  attr_accessor :song_list, :current_guests

  def initialize(price, max_guests, song_list, current_guests)
    @price = price
    @current_guests = current_guests
    @max_guests = max_guests
    @song_list = song_list
  end

  def display_number_of_current_guests
    @current_guests.length
  end

  def add_song_to_room(song)
    @song_list << song
  end

  def check_in_guest(guest)
    @current_guests << guest if @current_guests.length < @max_guests
  end

  def check_out_guest
    @current_guests.shift
  end

  def guest_can_afford_to_enter?(guest)
    return guest.money >= @price
  end

end
