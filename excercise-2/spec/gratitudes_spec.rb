require 'gratitudes'

RSpec.describe Gratitudes do
  
  it "prints a gratitude" do
    gratitudes = Gratitudes.new
    gratitudes.add("cats")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: cats"
  end

  it "prints a string of gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("cats")
    gratitudes.add("dogs")
    gratitudes.add("snakes")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: cats, dogs, snakes"
  end
  
end
