Given /^a user$/ do
  @user = FactoryGirl.create(:user)
  login_as @user
end

Given /^another user$/ do
  @other_user = FactoryGirl.create(:user)
  login_as @other_user
end

Given /^an admin$/ do
  step %[a user]
  @user.add_role(:admin)
end

When /^I add two photos$/ do
  @photo = Photo.create({:is_private=>false})
  @user.add_role(:owner, @photo)

  @photo_1 = Photo.create
  @user.add_role(:owner, @photo_1)

end

When /^I go to my user photo page$/ do
  visit users_photos_path(@user.id)
end

Then /^I should see all my photos$/ do
  page.should have_css("table#photos tr", :count => 3)
end

When /^I go to another user photo page$/ do
  step %[another user]
  visit users_photos_path(@user.id)
end

Then /^I should only see his visible photos$/ do
  page.should have_css("table#photos tr", :count => 2)
end

When /^I go to the homepage$/ do
  visit '/'
end

Then /^I should see a link (.+)$/ do |link|
  n_link = find_link(link) rescue nil
  n_link.should_not == nil
end

Then /^I should not see a link (.+)$/ do |link|
  n_link = find_link(link) rescue nil
  n_link.should == nil
end

When /^I look for a manage resource href(.+)$/ do |resource|
  @path = admin_users_path
end

Then /^I should see my resourced href$/ do
  link = find("a[href='#{@path}']") rescue nil
  link.should_not be nil
end

Then /^I should not see my resourced href$/ do
  link = find("a[href='#{@path}']") rescue nil
  link.should be nil
end
