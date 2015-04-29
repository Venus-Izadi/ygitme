require "ygitme/version"

module Ygitme  
  class Challenge
    def gitme
      gitStatus
      gitCommit
    end

    def gitStatus
      puts 'Y git me a status of things'
      gitStatus = gets.chomp
      if (gitStatus == 'git status')
        puts 'Yahoo, you are right!'
      else
        puts 'Y need to git MOAR!'
      end
    end

    def gitCommit
      puts 'Y git me a commit command'
      gitCommit = gets.chomp
      if (gitCommit == 'git commit -m ""')
        puts 'Yahoo, you are right!'
      else
        puts 'Y need to git MOAR!'
      end
    end

  end
end  