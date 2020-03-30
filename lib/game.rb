require_relative "board.rb"

class Game
  def self.run(*args)
    Game.new.run(*args)
  end

  def run(output, input)
    output.puts game_start_message
    user_input = input.gets
    while valid?(user_input) === false
      output.puts "Error"
      user_input = input.gets
    end
    SystemExit
  end

  private

  def game_start_message
    empty_board + "\n" + start_prompt
  end

  def empty_board
    Board.new.to_s
  end

  def start_prompt
    "Where would you like to play?\nEnter row letter and then column number."
  end

  def valid?(input)
    row = input[0]
    column = input[1]
    rows = ["A", "B", "C"]
    columns = ["1", "2", "3"]

    rows.include?(row) && columns.include?(column)
  end
end
