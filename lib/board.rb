require "pry"

class Board
  attr_accessor :board

  def initialize
    @board = top_row
    build_empty_board
  end

  def stringify_board
    <<~SQUIGGLY_HEREDOC
      #{board}
    SQUIGGLY_HEREDOC
  end

  private

  def row
    "|  |  |  |\n|__|__|__|\n".freeze
  end

  def top_row
    " __ __ __\n".freeze
  end

  def build_empty_board
    3.times do
      @board += row
    end
  end
end
