When(/^I go to add a recipe$/) do
  click_link "Add Recipe"
end

When(/^I complete the form$/) do
  fill_in "Title", :with => "Carrot & Corriander Pancakes"
end

When(/^I submit the form$/) do
  click_on "Save"
end


When(/^I complete the form without a title$/) do
    fill_in "Title", :with => ""
end

When(/^I add "(.*?)" as an ingredient$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^a recipe should be created$/) do
  assert_equal 1, Recipe.where(:title => "Carrot & Corriander Pancakes").count
end

Then(/^I should see the newly created recipe$/) do
  # save_and_open_page
  assert page.has_content?("Carrot & Corriander Pancakes")
end

Then(/^I should see "(.*?)" in the flash notice$/) do |message|
  within("#flash") do
    assert page.has_content?(message)
  end
end

Then(/^a recipe should not be created$/) do
  assert_equal 0, Recipe.count
end

Then(/^I should see a validation error about the title$/) do
  assert page.has_content?("Title can't be blank")
end


Then(/^the recipe should have (\d+) ingredients$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should "(.*?)" in the flash notice$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
