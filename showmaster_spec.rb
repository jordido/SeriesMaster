require_relative 'ShowMaster'

describe 'ShowMaster' do
  before {@showmaster = ShowMaster.new}
  describe "#best_ever" do
    it "It works with The wire" do
      @showmaster.best_ever.should == "The Wire"
    end
  end
  describe "#rating_of" do
  	it "It works The wire" do
  		@showmaster.rating_of?('The Wire').should == 9.4
  	end
  	it "It works with Game of Thrones" do
	  	@showmaster.rating_of?('Game of Thrones') == 9.5
	  end
	end
  describe "#best_within" do
  	it "It works with best_within Breaking Bad, Veep and Mom"
	  	@showmaster.best_within([
						  "Breaking Bad",
						  "Veep",
						  "Mom"
						]).should == 'Breaking Bad'
	  	end
  	it "It works with best within Utopia, Game of Thrones and The Office" do
	  	@showmaster.best_within([
				  	  "Utopia",
				  	  "Game of Thrones",
				  	  "The Office"
				  	]).should == 'Game of Thrones'
	  end
	end
end
