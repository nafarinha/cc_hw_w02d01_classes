require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @players = ["John", "Alice", "Richard", "Anna", "Kate", "Keanu"]
    @team = SportsTeam.new("Red Devils", @players, "John Doe", 10)
  end

# Before refactoring
  # def test_get_name
  #   assert_equal("Red Devils", @team.get_name())
  # end
  #
  # def test_get_players
  #   assert_equal(@players, @team.get_players())
  # end
  #
  # def test_get_coach
  #   assert_equal("John Doe", @team.get_coach())
  # end
  #
  # def test_set_coach
  #   assert_equal("Jane Doe", @team.set_coach("Jane Doe"))
  # end
# End Before refactoring

# After refactoring
  def test_get_name
    assert_equal("Red Devils", @team.name())
  end

  def test_get_players
    assert_equal(@players, @team.players())
  end

  def test_get_coach
    assert_equal("John Doe", @team.coach())
  end

  def test_add_player
    @team.add_player("Zoe")
    assert_equal(7, @players.count())
  end

  def test_is_player__true
    assert_equal(true, @team.is_player("John"))
  end

  def test_check_is_player__false
    assert_equal(false, @team.is_player("Dave"))
  end

  def test_game_result__won
    assert_equal(13, @team.game_result("win"))
  end

  def test_game_result__lost
    assert_equal(10, @team.game_result("lost"))
  end
end
