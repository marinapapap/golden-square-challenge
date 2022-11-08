require 'present'

RSpec.describe Present do

    context "no contents has been wrapped" do
      it "fails" do
        present = Present.new
        expect { present.unwrap }.to raise_error "No contents have been wrapped."
      end
    end

    context "if theres already contents wrapped" do
      it "fails" do
        present = Present.new
        present.wrap(4)
        expect { present.wrap(6) }.to raise_error "A contents has already been wrapped."
      end
    end

    
end