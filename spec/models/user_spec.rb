require 'spec_helper'

describe User do

    # Before runs code block before each example
    before { @user = User.new(name: "Example User", email: "user@example.com") }

    # Subjet makes the @user the default subject of the test
    subject { @user }

    # Initial model test
    it { should respond_to(:name) }
    it { should respond_to(:email) }

    # Check for a valid @user obj (sanity-check)
    it { should be_valid }

    # Check the user name against an invalid string
    describe "when name is not present" do
        before { @user.name = " " }
        it { should_not be_valid }
    end

    # check email address for existence
    describe "when email is not present" do
        before { @user.email = " " }
        it { should_not be_valid }
    end

    # Name should be less than 50 characters
    describe "when name is too long" do
        before { @user.name = "a" * 51 }
        it { should_not be_valid }
    end

    # Check for invalid email
    describe "When email is invalid" do
        it "shoudl be invalid" do

            # String Collection
            addresses = %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]

            # Loop through collection block
            addresses.each do |invalid_address|
                @user.email = invalid_address
                expect(@user).not_to be_valid
            end
        end
    end

    # Check for valid email
    describe "when email is valid" do
        it "should be valid" do
            addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]

            addresses.each do |valid_address|
                @user.email = valid_address
                expect(@user).to be_valid
            end
        end
    end

end
