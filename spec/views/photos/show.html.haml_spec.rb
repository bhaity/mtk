require 'spec_helper'

describe "photos/show.html.haml" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :name => "Name",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Image/)
  end
end
