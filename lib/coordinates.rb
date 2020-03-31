class Coordinates
  def initialize(input)
    @row = input[0].capitalize
    @column = input[1].capitalize
  end

  def valid?
    row_valid? && column_valid?
  end

  private

  def row_valid?
    row_names.include?(@row)
  end

  def column_valid?
    column_names.include?(@column)
  end

  def row_names
    ["A", "B", "C"]
  end

  def column_names
    ["1", "2", "3"]
  end
end
