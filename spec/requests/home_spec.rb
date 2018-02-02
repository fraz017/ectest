require 'rails_helper'
RSpec.describe 'Fizz Buzz Method' do
    
    # When a valid number is passed
    describe 'GET buzify' do
        before { get "/buzify?number=#{number}" }

        context 'when a valid number passed' do

            let(:number) { 1 }

            it 'returns status code 200' do
                expect(response).to have_http_status(200)
            end

            it 'returns empty string' do
                expect(JSON.parse(response.body)).not_to be_nil
                expect(JSON.parse(response.body)["buzz"]).to eq("")
            end
        end

        context 'when a valid number (3) passed' do

            let(:number) { 3 }

            it 'returns status code 200' do
                expect(response).to have_http_status(200)
            end

            it 'returns empty string' do
                expect(JSON.parse(response.body)).not_to be_nil
                expect(JSON.parse(response.body)["buzz"]).to eq("Fizz")
            end
        end

        context 'when a valid number (5) passed' do

            let(:number) { 5 }

            it 'returns status code 200' do
                expect(response).to have_http_status(200)
            end

            it 'returns empty string' do
                expect(JSON.parse(response.body)).not_to be_nil
                expect(JSON.parse(response.body)["buzz"]).to eq("Buzz")
            end
        end

        context 'when a valid number (15) passed' do

            let(:number) { 15 }

            it 'returns status code 200' do
                expect(response).to have_http_status(200)
            end

            it 'returns empty string' do
                expect(JSON.parse(response.body)).not_to be_nil
                expect(JSON.parse(response.body)["buzz"]).to eq("FizzBuzz")
            end
        end
    end

    # When a string is passed
    describe 'GET buzify?number=' do
        before { get "/buzify?number=" }

        context 'when no number is passed' do
          it 'returns status code 422' do
            expect(response).to have_http_status(422)
          end
        end
    end

    # When no number is passed
    describe 'GET buzify?number=' do
        before { get "/buzify?number=" }

        context 'when no number is passed' do
          it 'returns status code 422' do
            expect(response).to have_http_status(422)
          end
        end
    end
  end