module Commands
  class Abstract
    attr_accessor :branch, :remote
    def initialize(options = {})
      @branch = options.fetch(:branch, "a_branch")
      @remote = options.fetch(:remote, "origin")
    end
  end

  def run
    raise NotImplementedError
  end
end
