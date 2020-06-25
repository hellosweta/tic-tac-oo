class Interface
  attr_accessor :std_in, :std_out
  attr_reader :board

  def initialize(std_in:, std_out:, board:)
    @std_out = std_out
    @std_in = std_in
    @board = board.to_s
  end

  def print_start
    print(start_message)
  end

  def print_error
    print(error_message)
  end

  def read
    std_in.gets.chomp
  end

  private

  def start_message
    board + "\n" + start_prompt + "\n" + instructions
  end

  def start_prompt
    "Where would you like to play?"
  end

  def error_message
    "Hm, that doesn't seem quite right." + "\n" + instructions
  end

  def instructions
    'Enter a row letter and column number. For Example: "A1".'
  end

  def print(message)
    std_out.puts message
  end
end
