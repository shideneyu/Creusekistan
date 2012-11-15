require 'spec_helper'

describe "evenements/index" do
  before(:each) do
    assign(:evenements, [
      stub_model(Evenement,
        :title => "Title",
        :content => "MyText",
        :place => "Place"
      ),
      stub_model(Evenement,
        :title => "Title",
        :content => "MyText",
        :place => "Place"
      )
    ])
  end

  it "renders a list of evenements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
  end
end
