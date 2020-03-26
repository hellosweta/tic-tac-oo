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
    first_labeled_row + second_labeled_row + third_labeled_row
  end

  def first_labeled_row
    column_labels[0] + row
  end

  def second_labeled_row
    column_labels[1] + row
  end

  def third_labeled_row
    column_labels[2] + row
  end

  def column_labels
    ["A ", "B ", "C "].freeze
  end

  def row
    "|  |  |  |\n  |__|__|__|\n".freeze
  end
end
