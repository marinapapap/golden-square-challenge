require 'check_codeword'

RSpec.describe "Codeword equals 'horse'" do
  
  it "returns correct message if codeword equals horse" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns wrong message if codeword does not equal horse and is not close" do 
    result = check_codeword("happy")
    expect(result).to eq "WRONG!"
  end
  
  it "returns close message if codeword does not equal horse but is close" do
    expect(check_codeword("hare")).to eq "Close, but nope."
    expect(check_codeword("house")).to eq "Close, but nope."
  end

  it "returns wrong message if codeword does not equal horse but has same first letter" do
    expect(check_codeword("happy")).to eq "WRONG!"
  end

  it "returns wrong message if codeword does not equal horse but has same last letter" do
    expect(check_codeword("prove")).to eq "WRONG!"
  end

end
