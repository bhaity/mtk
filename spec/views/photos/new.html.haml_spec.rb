require 'spec_helper'

describe "photos/new.html.haml" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :name => "MyString",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => photos_path, :method => "post" do
      assert_select "input#photo_name", :name => "photo[name]"
      assert_select "input#photo_image", :name => "photo[image]"
    end
  end
end
