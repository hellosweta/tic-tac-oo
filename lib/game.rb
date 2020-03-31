require_relative "board.rb"

class Game
  def self.run(*args)
    Game.new.run(*args)
  end

  def run(output, input)
    output.puts game_start_message
    user_input = input.gets
    check_for_valid_coordinates(user_input, input, output)
    SystemExit
  end

  private

  def game_start_message
    empty_board + "\n" + start_prompt
  end

  def error_message
    'Hm, that doesn\'t seem quite right. Enter a row and column. For Example: "A1".'
  end

  def empty_board
    Board.new.to_s
  end

  def start_prompt
    "Where would you like to play?\nEnter row letter and then column number."
  end

  def check_for_valid_coordinates(user_input, std_in, std_out)
    while valid?(user_input) === false
      std_out.puts error_message
      user_input = std_in.gets
    end
  end

  def valid?(input)
    row = input[0].capitalize
    column = input[1].capitalize
    rows = ["A", "B", "C"]
    columns = ["1", "2", "3"]

    rows.include?(row) && columns.include?(column)
  end
end
