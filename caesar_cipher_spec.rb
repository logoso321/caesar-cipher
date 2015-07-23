require "./caesar_cipher"
describe Cipher do

	before do
    	@cipher = Cipher.new
    end

	describe "add" do
		it "adds 1+1" do
		    @cipher.add(1,1).should == 2
		end
	end
end