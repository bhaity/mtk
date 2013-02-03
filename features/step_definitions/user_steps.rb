Given /^a user$/ do
  @user = FactoryGirl.create(:user)
  login_as @user
end

When /^I go to the homepage$/ do
  visit '/'
end

Then /^I should see a link (.+)$/ do |link|
  puts link
  n_link = find_link(link) rescue nil
  n_link.should_not == nil
end

Then /^I should not see a link (.+)$/ do |link|
  n_link = find_link(link) rescue nil
  n_link.should == nil
end
