class Board
  attr_reader :grid

  def initialize
    @grid = build_grid
  end

  def to_s
    grid
  end

  private

  def numbered_row
    "   1  2  3\n".freeze
  end

  def build_grid
    @grid = numbered_row
    add_top_row
    add_rows
  end

  def add_top_row
    @grid += top_row
  end

  def top_row
    "   __ __ __\n".freeze
  end

  def add_rows
    @grid += rows
  end

  def rows
    row("A") + row("B") + row("C")
  end

  def row(label)
    label + " |  |  |  |\n  |__|__|__|\n".freeze
  end
end
