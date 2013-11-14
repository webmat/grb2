require 'test_helper'

class DeleteTest < Minitest::Test
  def test_command_object
    cmd = Commands::Delete.new
    assert_match /branch -d/i, cmd.commands.first
    assert_match /push .* :refs\/heads/i, cmd.commands[1]
  end
end
