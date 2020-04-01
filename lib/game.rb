require_relative "board.rb"
require_relative "interface.rb"
require_relative "player.rb"

class Game
  attr_reader :interface, :player

  def initialize(std_in:, std_out:)
    board = Board.new
    @interface = Interface.new(
      std_in: std_in,
      std_out: std_out,
      board: board
    )
    @player = Player.new(interface: interface)
  end

  def self.run(*args)
    Game.new(*args).run
  end

  def run
    start
    play
    finish
  end

  private

  def start
    interface.print_start
  end

  def play
    player.get_valid_move
  end

  def finish
    raise SystemExit
  end
end
