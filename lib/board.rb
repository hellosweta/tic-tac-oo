class Board
  attr_reader :grid

  def initialize
    @grid = numbered_row
    build_grid
  end

  def to_s
    grid
  end

  private

  def numbered_row
    "   1  2  3\n".freeze
  end

  def build_grid
    add_top_grid_row
    add_grid_rows
  end

  def add_top_grid_row
    @grid += top_grid_row
  end

  def top_grid_row
    "   __ __ __\n".freeze
  end

  def add_grid_rows
    3.times do |i|
      @grid = grid + column_labels[i] + row
    end
  end

  def column_labels
    ["A ", "B ", "C "]
  end

  def row
    "|  |  |  |\n  |__|__|__|\n".freeze
  end
end
