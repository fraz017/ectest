require 'rails_helper'
RSpec.describe 'Fizz Buzz Service' do
    
    let(:invalid) {[nil, nil, 422]}

    context "1 as an input" do
        subject { FizzBuzzService.new(1).buzify}
        it "returns the values" do
            expect(subject).to eq(["", "1", 200])
        end
    end
    
    context "3 as an input" do
        subject { FizzBuzzService.new(3).buzify}
        it "returns a value" do
            expect(subject).to eq(["Fizz", "3", 200])
        end
    end

    context "5 as an input" do
        subject { FizzBuzzService.new(5).buzify}
        it "returns a value" do
            expect(subject).to eq(["Buzz", "5", 200])
        end
    end    

    context "15 as an input" do
        subject { FizzBuzzService.new(15).buzify}
        it "returns a value" do
            expect(subject).to eq(["FizzBuzz", "15", 200])
        end
    end

    context "hello as an input" do
        subject { FizzBuzzService.new("hello").buzify}
        it "returns a value" do
            expect(subject).to eq(invalid)
        end
    end

    context "'' as an input" do
        subject { FizzBuzzService.new("").buzify}
        it "returns a value" do
            expect(subject).to eq(invalid)
        end
    end

    context "nil as an input" do
        subject { FizzBuzzService.new(nil).buzify}
        it "returns a value" do
            expect(subject).to eq(invalid)
        end
    end
end