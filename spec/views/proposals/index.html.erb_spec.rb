require 'spec_helper'

describe "proposals/index" do
  before(:each) do
    assign(:proposals, [
      stub_model(Proposal,
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
      ),
      stub_model(Proposal,
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
      )
    ])
  end

  it "renders a list of proposals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lead Presenter".to_s, :count => 2
    assert_select "tr>td", :text => "Co Presenter".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Credentials".to_s, :count => 2
    assert_select "tr>td", :text => "Presentation Type".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
