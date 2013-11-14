module Commands
  class Abstract
    attr_accessor :branch, :remote
    def initialize(options = {})
      @branch = options.fetch(:branch, "a_branch")
      @remote = options.fetch(:remote, "origin")
    end

    def commands
      raise NotImplementedError
    end

    def run
      commands.each do |cmd|
        run_command(cmd)
      end
    end

    def run_command(cmd)
      `#{cmd}`
    end

    def git
      'git'
    end

  end
end
