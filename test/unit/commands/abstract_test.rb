require 'test_helper'

module Commands
  class AbstractTest < Minitest::Test
    def test_truth
      cmd = Abstract.new
      assert_equal cmd.branch, 'a_branch', 'has a default'
      assert_equal cmd.remote, 'origin', 'has a default'
    end
  end
end
