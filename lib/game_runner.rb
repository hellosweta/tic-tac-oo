require_relative "game.rb"

class GameRunner
  def run
    output = Game.run(StringIO.new)
    puts output.string
  end
end

GameRunner.new.run
