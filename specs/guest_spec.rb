require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../room.rb")

class GuestTest < MiniTest::Test

  def setup
    @song1 = Song.new("aa", "bb")
    @guest1 = Guest.new("Steve", 10, @song1)

  end

  def test_a_guest_has_a__name
    assert_equal("Steve", @guest1.name)
  end

  def test_a_room_has_an_amount_of_money
    assert_equal(10, @guest1.money)
  end

  def test_a_guest_has_a_favourite_song__by_title
    assert_equal("aa", @guest1.favourite_song.title)
  end

  def test_a_guest_has_a_favourite_song__by_artist
    assert_equal("bb", @guest1.favourite_song.artist)
  end

  def test_a_guest_can_respond_to_the_playlist__has_song
    assert_equal("yay", @guest1.respond_to_song())
  end

end
