require_relative "board.rb"
require_relative "coordinates.rb"

class Game
  attr_reader :std_out, :std_in, :coordinates

  def initialize(std_out, std_in)
    @std_out = std_out
    @std_in = std_in
  end

  def self.run(*args)
    Game.new(*args).run
  end

  def run
    start_game
    get_user_coordinates
    end_game
  end

  private

  def start_game
    std_out.puts game_start_message
    set_coordinates_from_user_input
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

  def get_user_coordinates
    until valid_input?
      prompt_for_new_coordinates
    end
  end

  def valid_input?
    coordinates.valid?
  end

  def set_coordinates_from_user_input
    @coordinates = Coordinates.new(std_in.gets.chomp)
  end

  def prompt_for_new_coordinates
    std_out.puts error_message
    set_coordinates_from_user_input
  end

  def error_message
    "Hm, that doesn't seem quite right." + "\n" + instructions_prompt
  end

  def end_game
    raise SystemExit
  end
end
