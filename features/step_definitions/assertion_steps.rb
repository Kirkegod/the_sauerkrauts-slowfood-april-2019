Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should be on the {string}") do |menu_page|
  visit menu_page_path
end