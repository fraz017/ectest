require 'rails_helper'

RSpec.describe HomeController, type: :controller do
    describe "GET #index" do          
        subject { get :index }
        it "renders the :index view" do
            expect(subject).to render_template(:index)
            expect(subject).to render_template("home/index")
        end

        it "does not render a different template" do
            expect(subject).to_not render_template("home/show")
        end
    end

    describe "GET #buzify" do          
        subject { get :buzify }
        it "does not render a template" do
            expect(subject).to_not render_template("home/buzify")
        end

        it "should respond with json type" do
            expect(subject.header['Content-Type']).to include('application/json')
        end

        it "should respond with json type" do
            expect(subject.header['Content-Type']).to include('application/json')
        end
    end
end
