class Coordinates
  attr_reader :user_input, :row, :column

  def initialize(user_input)
    @user_input = user_input
  end

  def valid?
    return false unless correct_length?
    row_valid? && column_valid?
  end

  def correct_length?
    user_input.length == 2
  end

  private

  def row_valid?
    set_row
    row_names.include?(row)
  end

  def column_valid?
    set_column
    column_names.include?(column)
  end

  def set_row
    @row = user_input[0].capitalize
  end

  def set_column
    @column = user_input[1].capitalize
  end

  def row_names
    ["A", "B", "C"]
  end

  def column_names
    ["1", "2", "3"]
  end
end
