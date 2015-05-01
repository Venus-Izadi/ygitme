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
      mockInputText = 'git status'
      expectedOutput = @Challenge.gitStatus(mockInputText)
      expectedOutput.must_equal 'Yes'
    end

    it "Checks if it rejects incorrect input for Git Status command" do
      mockInputText = 'git incorrect'
      expectedOutput = @Challenge.gitStatus(mockInputText)
      expectedOutput.must_equal 'No'
    end

  end

describe "#testing Git Commit" do
    it "Checks if it accepts correct input for Git Commit command" do
      mockInputText = 'git commit -m'
      expectedOutput = @Challenge.gitCommit(mockInputText)
      expectedOutput.must_equal 'Yes'
    end

    it "Checks if it rejects incorrect input for Git Commit command" do
      mockInputText = 'git incorrect'
      expectedOutput = @Challenge.gitCommit(mockInputText)
      expectedOutput.must_equal 'No'
    end
  end

describe "#testing Git Branch" do
    it "Checks if it accepts correct input for Git Branch command" do
      mockInputText = 'git branch'
      expectedOutput = @Challenge.gitBranch(mockInputText)
      expectedOutput.must_equal 'Yes'
    end

    it "Checks if it rejects incorrect input for Git Branch command" do
      mockInputText = 'git incorrect'
      expectedOutput = @Challenge.gitBranch(mockInputText)
      expectedOutput.must_equal 'No'
    end
    		
  end

describe "#testing Git Branch" do
    it "Checks if it accepts correct input for Git Version command" do
      mockInputText = 'git version'
      expectedOutput = @Challenge.gitVersion(mockInputText)
      expectedOutput.must_equal 'Yes'
    end

    it "Checks if it rejects incorrect input for Git Version command" do
      mockInputText = 'git incorrect'
      expectedOutput = @Challenge.gitVersion(mockInputText)
      expectedOutput.must_equal 'No'
    end
    		
  end

end
end
