require_relative "../lib/board.rb"

RSpec.describe Board do
  describe "#to_s" do
    it "returns an empty, numbered board" do
      grid_with_numbers = <<~SQUIGGLY_HEREDOC
           1  2  3
           __ __ __
        A |  |  |  |
          |__|__|__|
        B |  |  |  |
          |__|__|__|
        C |  |  |  |
          |__|__|__|
      SQUIGGLY_HEREDOC

      new_board = Board.new

      expect(new_board.to_s).to eq(grid_with_numbers)
    end
  end
end
