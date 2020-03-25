class Board
  attr_accessor :board

  def initialize
    @board = top_row
    build_build_grid
    add_numbers
  end

  private

  def row
    "|  |  |  |\n|__|__|__|\n".freeze
  end

  def top_row
    " __ __ __\n".freeze
  end

  def build_grid
    3.times do
      @board += row
    end
  end

  def add_numbers

  end
end
