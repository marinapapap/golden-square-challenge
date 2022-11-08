require 'counter'

RSpec.describe Counter do

    it "adds a count to the number and prints the count" do
      counter = Counter.new
      counter.add(1)
      result = counter.report
      expect(result).to eq "Counted to 1 so far."
    end

end