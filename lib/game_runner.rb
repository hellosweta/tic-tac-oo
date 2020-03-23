require_relative "./board.rb"
require "pry"

class GameRunner
  def self.run(*args)
    GameRunner.new.run(*args)
  end

  def run(output)
    output.print empty_board
  end

  private

  def empty_board
    Board.new.stringify_board
  end
end

GameRunner.run(StringIO.new)
