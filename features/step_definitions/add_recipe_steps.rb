When(/^I go to add a recipe$/) do
  click_link "Add Recipe"
end

When(/^I complete the form$/) do
  fill_in "Title", :with => "Carrot & Corriander Pancakes"
end

When(/^I submit the form$/) do
  click_on "Save"
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
