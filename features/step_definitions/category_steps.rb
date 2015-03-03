Given(/^some categories exist$/) do
  Category.create!(:name => "Gluten Free")
  Category.create!(:name => "Low-Fat")
  Category.create!(:name => "Healthy")
end

Given(/^that I am on the homepage$/) do
  visit '/'
end

When(/^I select a category$/) do
  click_on "Gluten Free"
end

Then(/^I should see information about that category$/) do
  pending # express the regexp above with the code you wish you had
end
