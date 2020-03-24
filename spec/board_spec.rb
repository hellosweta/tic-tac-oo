require_relative "../lib/board.rb"

RSpec.describe Board do
  describe "#stringify_board" do
    it "returns an empty board" do
      empty_board = <<~SQUIGGLY_HEREDOC
         __ __ __
        |  |  |  |
        |__|__|__|
        |  |  |  |
        |__|__|__|
        |  |  |  |
        |__|__|__|
      SQUIGGLY_HEREDOC

      new_board = Board.new

      expect(new_board.stringify).to eq(empty_board)
    end
  end
end
