require 'spec_helper'

describe "photos/edit.html.haml" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :new_record? => false,
      :name => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit photo form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => photo_path(@photo), :method => "post" do
      assert_select "input#photo_name", :name => "photo[name]"
      assert_select "input#photo_image", :name => "photo[image]"
    end
  end
end
