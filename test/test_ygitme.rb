require 'minitest_helper'

class TestYgitme < Minitest::Test
  # def test_that_it_has_a_version_number
  #   refute_nil ::Ygitme::VERSION
  # end

describe Ygitme do
  before do
    @Challenge = Ygitme::Challenge.new
  end

describe "#testing Git log" do
    it "Checks if it accepts correct input for Git Log command" do
      mockInputText = 'git log'
      expectedOutput = @Challenge.gitLog(mockInputText)
      expectedOutput.must_equal 'Yes'
    end

    it "Checks if it rejects incorrect input for Git Log command" do
      mockInputText = 'git incorrect'
      expectedOutput = @Challenge.gitLog(mockInputText)
      expectedOutput.must_equal 'No'
    end
	
end 

describe "#testing Git Status" do
    it "Checks if it accepts correct input for Git Status command" do
      correctMockInput = 'git status'
      actualOutput = @Challenge.gitStatus(correctMockInput)
      actualOutput.must_equal 'Yes'
    end

    it "Checks if it rejects incorrect input for Git Status command" do
      incorrectMockInput = 'git incorrect'
      actualOutput = @Challenge.gitStatus(incorrectMockInput)
      actualOutput.must_equal 'No'
    end

  end

describe "#testing Git Commit" do
    it "Checks if it accepts correct input for Git Commit command" do
      correctMockInput = 'git commit -m'
      actualOutput = @Challenge.gitCommit(correctMockInput)
      actualOutput.must_equal 'Yes'
    end

    it "Checks if it rejects incorrect input for Git Commit command" do
      incorrectMockInput = 'git incorrect'
      actualOutput = @Challenge.gitCommit(incorrectMockInput)
      actualOutput.must_equal 'No'
    end
  end

describe "#testing Git Branch" do
    it "Checks if it accepts correct input for Git Branch command" do
      correctMockInput = 'git branch'
      actualOutput = @Challenge.gitBranch(correctMockInput)
      actualOutput.must_equal 'Yes'
    end

    it "Checks if it rejects incorrect input for Git Branch command" do
      incorrectMockInput = 'git incorrect'
      actualOutput = @Challenge.gitBranch(incorrectMockInput)
      actualOutput.must_equal 'No'
    end
    		
  end

describe "#testing Git Version" do
    it "Checks if it accepts correct input for Git Version command" do
      correctMockInput = 'git version'
      actualOutput = @Challenge.gitVersion(correctMockInput)
      actualOutput.must_equal 'Yes'
    end

    it "Checks if it rejects incorrect input for Git Version command" do
      incorrectMockInput = 'git incorrect'
      actualOutput = @Challenge.gitVersion(incorrectMockInput)
      actualOutput.must_equal 'No'
    end
    		
  end

end
end
