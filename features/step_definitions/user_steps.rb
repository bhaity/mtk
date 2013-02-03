Given /^a user$/ do
  @user = FactoryGirl.create(:user)
  login_as @user
end

When /^I go to the homepage$/ do
  visit '/'
end

Then /^I should see a sign out link$/ do
  find_link('Sign Out').visible?.should == true
end

Then /^I should see a sign in link$/ do
  find_link('Sign In').visible?.should == true
end

Then /^I should not see a sign out link$/ do
  link = find_link('Sign Out') rescue nil
  link.should == nil
end
