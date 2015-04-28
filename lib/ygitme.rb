require "ygitme/version"

module Ygitme  
  class Challenge
    def gitme
      gitStatus
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
  end
end  