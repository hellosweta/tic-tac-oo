require_relative "../lib/interface.rb"

RSpec.describe Interface do
  describe "#read" do
    it "returns user input with new line removed" do
      mock_stdout = StringIO.new
      mock_stdin = StringIO.new
      interface = Interface.new(
        std_in: mock_stdin,
        std_out: mock_stdout,
        board: Board.new
      )
      allow(mock_stdin).to receive(:gets).and_return("string\n")

      result = interface.read

      expect(result).to eq("string")
    end
  end

  describe "#print_start" do
    it "prints start message" do
      mock_stdout = StringIO.new
      mock_stdin = StringIO.new
      interface = Interface.new(
        std_in: mock_stdin,
        std_out: mock_stdout,
        board: Board.new
      )
      start_message = <<~SQUIGGLY_HEREDOC
           1  2  3
           __ __ __
        A |  |  |  |
          |__|__|__|
        B |  |  |  |
          |__|__|__|
        C |  |  |  |
          |__|__|__|

        Where would you like to play?
        Enter a row letter and column number. For Example: "A1".
      SQUIGGLY_HEREDOC

      interface.print_start

      expect(mock_stdout.string).to eq(start_message)
    end
  end

  describe "#print_error" do
    it "prints error message" do
      mock_stdout = StringIO.new
      mock_stdin = StringIO.new
      interface = Interface.new(
        std_in: mock_stdin,
        std_out: mock_stdout,
        board: Board.new,
      )
      error_message = <<~SQUIGGLY_HEREDOC
        Hm, that doesn't seem quite right.
        Enter a row letter and column number. For Example: "A1".
      SQUIGGLY_HEREDOC

      interface.print_error

      expect(mock_stdout.string).to eq(error_message)
    end
  end
end
