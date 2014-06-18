require 'spec_helper'

describe "Static pages" do

    # Set the subject to the actual page
    subject { page }

    # Home Page
    describe "Home page" do

        # Before test visit the root
        before { visit root_path }

        it { should have_content('Home') }
        it { should have_title(full_title('')) }
        it { should_not have_title("Home |") }

    end

    # Contact
    describe "Contact page" do

        # Before test visit contact page
        before { visit contact_path }

        it { should have_content('Contact') }
        it { should have_title(full_title('Contact Us')) }

    end

    # FAQ
    describe "FAQ page" do

        # Before test visit contact page
        before { visit faq_path }

        it { should have_content('FAQ') }
        it { should have_title(full_title('FAQ')) }

    end

    # Proposal Page
    describe "Proposal page" do

        # Before test visit contact page
        before { visit proposal_path }

        it { should have_content('Proposal') }
        it { should have_title(full_title('Proposal')) }

    end

    # Registration Page
    describe "Registration page" do

        # Before test visit contact page
        before { visit registration_path }

        it { should have_content('Registration') }
        it { should have_title(full_title('Registration')) }

    end

    describe "Schedule page" do

        # Before test visit schedule page
        before { visit schedule_path }

        it { should have_content('Schedule') }
        it { should have_title(full_title('Schedule')) }

    end

end
