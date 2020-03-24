require_relative "game.rb"

class GameRunner
  def run
    $stdin = StringIO.new("input")
    output = Game.run($stdin)

    restore_standard_input

    output.rewind
    puts output.string
  end

  private

  def restore_standard_input
    $stdin = STDIN
  end
end

GameRunner.new.run
