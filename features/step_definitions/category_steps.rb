Given(/^some categories exist with some recipes$/) do
  ["Gluten Free", "Low-Fat", "Christmas"].each do |cat_name|
    cat = Category.create!(:name => cat_name)
    cat.recipes.create(:title => "Baked Beans")
  end
end

Given(/^that I am on the homepage$/) do
  visit '/'
end

When(/^I select a category$/) do
  click_on "Gluten Free"
end

Then(/^I should see all the recipes in that category$/) do
  assert page.has_content?("Baked Beans"), "Couldn't find Baked Beans"  
end

