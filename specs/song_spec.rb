require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    #make this a hash
    @song = Song.new("a", "b")
  end

  def test_a_song_has_a_title
    assert_equal("a", @song.title)
  end

  def test_a_song_has_an_artist
    assert_equal("b", @song.artist)
  end

  def test_get_song_by_title
    
  end


end
