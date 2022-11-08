require 'report_length'

  RSpec.describe "returns the length of a string" do

    it "returns 1 for a word with 1 character" do
    result = report_length("a")
    expect(result).to eq "This string was 1 characters long."
   end

    it "returns 2 for a word with 2 characters" do
    result = report_length("it")
    expect(result).to eq "This string was 2 characters long."
    end
    
    it "returns 3 for a word with 3 characters" do
    result = report_length("but")
    expect(result).to eq "This string was 3 characters long."
    end

end
