require_relative "board.rb"

class GameRunner
  def self.run(*args)
    GameRunner.new.run(*args)
  end

  def run(output)
    output.puts empty_board
    puts output.string
  end

  private

  def empty_board
    Board.new.stringify
  end
end

GameRunner.run(StringIO.new)
