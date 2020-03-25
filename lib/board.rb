class Board
  attr_reader :grid

  def initialize
    @grid = top_row
    build_grid
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
      @grid += row
    end
  end

  def add_numbers

  end
end
