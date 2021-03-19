class Game
  attr_accessor :player1, :player2
  attr_reader :turn
  def initialize(player1, player2, player_class = Player)
    @player_class = player_class
    @player1 = @player_class.new(player1)
    @player2 = @player_class.new(player2)
    @turn = [@player1, @player2].sample
  end

  def change_turn
    if @turn == @player1
      @turn = @player2
    else
      @turn = @player1
    end
  end

  def self.new_game(player1,player2)
    @@stored_game = Game.new(player1, player2, player_class = Player)
  end

  def self.stored_game
    @@stored_game
  end
  
  def attack
    if @turn == @player1
      @player1.attack(@player2)
      @player1.attacked = false
    else
      @player2.attack(@player1)
      @player2.attacked = false
    end
  end
end
