require 'spec_helper'

describe "Static pages" do

    # Home Page
    describe "Home page" do

        it "should have the content 'Home'" do
            visit '/static_pages/home'
            expect(page).to have_content('Home')
        end

        it "should have the title 'Home'" do
          visit '/static_pages/home'
          expect(page).to have_title("Home | Quint State Conference at UGA")
        end

    end

    # Contact
    describe "Contact page" do

        it "should have the content 'Contact'" do
            visit '/static_pages/contact'
            expect(page).to have_content('Contact')
        end

    end

end
