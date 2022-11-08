require 'password_checker'

RSpec.describe PasswordChecker do
    it "returns true for password with >8 chars" do
        password_checker = PasswordChecker.new
        result = password_checker.check("123456789")
        expect(result).to eq true
    end

    it "fails" do
        password_checker = PasswordChecker.new
        expect { password_checker.check("123") }.to raise_error "Invalid password, must be 8+ characters."
    end
end