module Commands
  class Delete < Abstract
    def commands
      [ "#{git} branch -d #{branch}",
        "#{git} push #{remote} :refs/heads/#{branch}"
      ]
    end
  end
end
