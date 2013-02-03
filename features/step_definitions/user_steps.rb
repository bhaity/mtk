Given /^a user$/ do
  @user = FactoryGirl.create(:user)
  login_as @user
end

Given /^an admin$/ do
  step %[a user]
  @user.add_role(:admin)
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
