require 'spec_helper'

describe "photos/index.html.haml" do
  before(:each) do
    assign(:photos, [
      stub_model(Photo,
        :name => "Name",
        :image => "Image"
      ),
      stub_model(Photo,
        :name => "Name",
        :image => "Image"
      )
    ])
  end

  it "renders a list of photos" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
