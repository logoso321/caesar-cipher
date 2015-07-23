require "./caesar_cipher"
	
describe "caesar_cipher" do
	it "translates one word" do
		caesar_cipher("What", 5).should == "Bmfy"
	end

	it "translates multiple words" do
		caesar_cipher("What a string!", 5).should == "Bmfy f xywnsl!"
	end
end
