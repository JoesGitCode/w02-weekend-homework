require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomsTest < MiniTest::Test

  def setup
    @song_list = [@song1, @song2]
    @current_guests = [@guest1, @guest2]

    @guest1 = Guest.new("Steve", 10, @song1)
    @guest2 = Guest.new("Stevey", 100, @song2)
    @guest3 = Guest.new("Wee Stevey", 10, @song2)
    @guest4 = Guest.new("Wee Stevey 2", 10, @song2)


    @song1 = Song.new("a", "b")
    @song2 = Song.new("c", "d")
    @song3 = Song.new("e", "f")

    @room1 = Room.new(10, 3, @song_list, @current_guests)
  end

  def test_a_room_has_a__price
    assert_equal(10, @room1.price)
  end

  def test_display_number_of_current_guests
    assert_equal(2, @room1.current_guests.length)
  end

  def test_a_room_can_have_many_songs
    assert_equal(2, @song_list.length)
  end

  def test_a_room_can_add_a_song
    @room1.add_song_to_room(@song3)
    assert_equal(3, @song_list.length)
  end

  def test_can_add_a_guest
    @room1.check_in_guest(@guest3)
    assert_equal(3, @current_guests.length)
  end

  def test_can_remove_a_guest
    @room1.check_out_guest()
    assert_equal(1, @current_guests.length)
  end

  def test_wont_accept_guests_if_at_max_capacity
    @room1.check_in_guest(@guest3)
    @room1.check_in_guest(@guest4)
    assert_equal(3, @current_guests.length)
  end

  def test_a_guest_has_enough_money
    assert_equal(true, @room1.guest_can_afford_to_enter?(@guest1))
  end


end
