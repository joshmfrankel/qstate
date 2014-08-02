require 'spec_helper'

describe "proposals/show" do
  before(:each) do
    @proposal = assign(:proposal, stub_model(Proposal,
      :lead_presenter => "Lead Presenter",
      :co_presenter => "Co Presenter",
      :email => "Email",
      :school => "School",
      :credentials => "Credentials",
      :presentation_type => "Presentation Type",
      :title => "Title",
      :summary => "MyText",
      :abstract => "MyText",
      :additional_information => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lead Presenter/)
    rendered.should match(/Co Presenter/)
    rendered.should match(/Email/)
    rendered.should match(/School/)
    rendered.should match(/Credentials/)
    rendered.should match(/Presentation Type/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
