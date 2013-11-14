require "grb/version"
require "grb/commands"
require "grb/commands/abstract"

require 'thor'

module Grb
  class CLI < Thor
    desc "Delete a branch", "Delete a branch locally and remotely"
    def delete(branch, remote = 'origin')
      puts "deleting #{branch} #{remote}"
    end
  end
end
