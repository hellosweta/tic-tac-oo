class MockInterface
  attr_accessor :interface

  def initialize
    @mock_stdout = StringIO.new
    @mock_stdin = StringIO.new
    @interface = Interface.new(std_in: @mock_stdin, std_out: @mock_stdout, board: Board.new)
  end
end
