require_relative "board.rb"
require_relative "coordinates.rb"

class Game
  attr_reader :std_out, :std_in

  def initialize(std_out, std_in)
    @std_out = std_out
    @std_in = std_in
  end

  def self.run(*args)
    Game.new(*args).run
  end

  def run
    coordinates = start_game
    retry_until_valid(coordinates)
    raise SystemExit
  end

  private

  def start_game
    std_out.puts game_start_message
    std_in.gets
  end

  def game_start_message
    empty_board + "\n" + start_prompt + "\n" + instructions_prompt
  end

  def empty_board
    Board.new.to_s
  end

  def start_prompt
    "Where would you like to play?"
  end

  def instructions_prompt
    'Enter a row letter and column number. For Example: "A1".'
  end

  def retry_until_valid(input)
    until valid_input?(input)
      input = reprompt_input
    end
  end

  def valid_input?(input)
    coordinates = Coordinates.new(input)
    coordinates.valid?
  end

  def reprompt_input
    std_out.puts error_message
    std_in.gets
  end

  def error_message
    "Hm, that doesn't seem quite right." + "\n" + instructions_prompt
  end
end
