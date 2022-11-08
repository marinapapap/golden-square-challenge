require 'string_builder'

RSpec.describe StringBuilder do
    it "adds a string to the string instance and returns length of new string" do
        string_builder = StringBuilder.new
        string_builder.add("hello")
        result = string_builder.size
        expect(result).to eq 5
    end

    it "returns a new string - string + string" do
        string_builder = StringBuilder.new
        string_builder.add("hello")
        result = string_builder.output
        expect(result).to eq "hello"
    end
end