require 'spec_helper'

describe "Static pages" do

    # Set the base title for everypage
    let(:base_title) { "Quint State Conference at UGA" }

    # Home Page
    describe "Home page" do

        it "should have the content 'Home'" do
            visit '/static_pages/home'
            expect(page).to have_content('Home')
        end

        it "should have the base title" do
          visit '/static_pages/home'
          expect(page).to have_title("#{base_title}")
        end

        it "should not have the title 'Home'" do
          visit '/static_pages/home'
          expect(page).not_to have_title("Home |")
        end

    end

    # Contact
    describe "Contact page" do

        it "should have the content 'Contact'" do
            visit '/static_pages/contact'
            expect(page).to have_content('Contact')
        end

        it "should have the title 'Contact Us'" do
          visit '/static_pages/contact'
          expect(page).to have_title("Contact Us | #{base_title}")
        end

    end

    # FAQ
    describe "FAQ page" do

        it "should have the content 'FAQ'" do
            visit '/static_pages/faq'
            expect(page).to have_content('FAQ')
        end

        it "should have the title 'FAQ'" do
          visit '/static_pages/faq'
          expect(page).to have_title("FAQ | #{base_title}")
        end

    end

    # Proposal Page
    describe "Proposal page" do

        it "should have the content 'Proposal'" do
            visit '/static_pages/proposal'
            expect(page).to have_content('Proposal')
        end

        it "should have the title 'Proposal'" do
          visit '/static_pages/proposal'
          expect(page).to have_title("Proposal | #{base_title}")
        end

    end

    # Registration Page
    describe "Registration page" do

        it "should have the content 'Registration'" do
            visit '/static_pages/registration'
            expect(page).to have_content('Registration')
        end

        it "should have the title 'Registration'" do
          visit '/static_pages/registration'
          expect(page).to have_title("Registration | #{base_title}")
        end

    end

end
