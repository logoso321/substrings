require "./substrings"
	
describe "substrings" do
	dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
	it "works with one word" do
		substrings("below", dictionary).should == {"below"=>1, "low"=>1}
	end
	it "works with multiple words" do
		substrings("Howdy partner, sit down! How's it going?", dictionary).should == {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
	end
end