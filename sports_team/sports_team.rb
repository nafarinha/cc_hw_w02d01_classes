class SportsTeam

  attr_reader :players
  attr_accessor :name, :coach, :points

  def initialize(name, players, coach, points = 0)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end


# Before refactoring
  # def get_name
  #   return @name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end
# End Before refactoring

  def add_player(new_player)
    @players.push(new_player)
  end

  def is_player(name)
    for player in @players
      return true if player == name
      return false
    end
  end

  def game_result(result)
    case result
    when "win"
      @points += 3
    when "lost"
      @points
    end
  end



end
