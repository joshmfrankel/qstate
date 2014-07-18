require 'spec_helper'

describe "Static pages" do

    # Set the subject to the actual page
    subject { page }

    # Shared examples
    shared_examples_for "all static pages" do
        it { should have_selector('h1', text: heading) }
        it { should have_title(full_title(page_title)) }
    end

    # Home Page
    describe "Home page" do

        # Before test visit the root
        before { visit root_path }

        # local variables
        let(:heading)    { 'Quint State Conference at UGA' }
        let(:page_title) { '' }

        # run the shared example
        it_should_behave_like "all static pages"

        # other test
        it { should_not have_title("Home |") }

    end

    # Contact
    describe "Contact page" do

        # Before test visit contact page
        before { visit contact_path }

        # local variables
        let(:heading)       { 'Contact' }
        let(:page_title)    { 'Contact Us' }

        # run the shared example
        it_should_behave_like "all static pages"

    end

    # FAQ
    describe "FAQ page" do

        # Before test visit contact page
        before { visit faq_path }

        # local variables
        let(:heading)       { 'FAQ' }
        let(:page_title)    { 'FAQ' }

        # run the shared example
        it_should_behave_like "all static pages"

    end

    # Proposal Page
    describe "Proposal page" do

        # Before test visit contact page
        before { visit proposal_path }

        # local variables
        let(:heading)       { 'Proposal' }
        let(:page_title)    { 'Proposal' }

        # run the shared example
        it_should_behave_like "all static pages"

    end

    # Registration Page
    describe "Registration page" do

        # Before test visit contact page
        before { visit registration_path }

        # local variables
        let(:heading)       { 'Registration' }
        let(:page_title)    { 'Registration' }

        # run the shared example
        it_should_behave_like "all static pages"

    end

    describe "Schedule page" do

        # Before test visit schedule page
        before { visit schedule_path }

        # local variables
        let(:heading)       { 'Schedule' }
        let(:page_title)    { 'Schedule' }

        # run the shared example
        it_should_behave_like "all static pages"

    end

    # Test links of layout
    it "should have the right links on the layout" do

        # visit home
        visit root_path

        # Check Registration
        click_link "Registration"
        expect(page).to have_title(full_title('Registration'))

        # Check Proposal
        click_link "Proposal"
        expect(page).to have_title(full_title('Proposal'))

        # Schedule
        click_link "Schedule"
        expect(page).to have_title(full_title('Schedule'))

        # FAQ
        click_link "FAQ"
        expect(page).to have_title(full_title('FAQ'))

        # Contact Not working?
        #click_link contact_path
        #expect(page).to have_title(full_title('Contact Us'))
    end

end
