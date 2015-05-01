require "ygitme/version"

module Ygitme  
  class Challenge
    def gitme

      userInput = getInput('Y git me list of git logs')
      puts gitLog(userInput)

      userInput = getInput('Y git me a status of things')
      puts gitStatus(userInput)

      userInput = getInput('Y git me how to commit')
      puts gitStatus(userInput)

      userInput = getInput('Y git me a list of branches')
      puts gitCommit(userInput)

      userInput = gitVerison('Y git me a version of your git')
      puts gitVerison(userInput)
    end
    
    def getInput(displayMessage)
      puts displayMessage
      input = gets.chomp
    end

    def assert(input, expected)
      return input == expected
    end

    def gitLog(input)
      if assert(input, "git log")
         'Yes'
      else
         'No'
      end
    end

    def gitStatus(input)
      if assert(input, 'git status')
        'Yes'
      else
        'No'
      end
    end

    def gitCommit(input)
      if assert(input,'git commit -m')
        'Yes'
      else
        'No'
      end
    end


    def gitBranch(input)
      if assert(input, "git branch")
        'Yes'
      else
        'No'
      end
    end

    
    def gitVersion(input)
      if assert(input,'git version')
        'Yes'
      else
        'No'
      end
    end

  end
end  