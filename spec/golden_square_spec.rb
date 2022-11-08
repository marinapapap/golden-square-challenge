require 'excercise_1/greet'

  RSpec.describe "Prints greeting to person" do

    it "greet user" do
    result = greet("Marina")
    expect(result).to eq "Hello, Marina!"
  end

end
