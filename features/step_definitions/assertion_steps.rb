Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see {string} in the {string} category") do |product, category|
  pending # Write code here that turns the phrase above into concrete actions
end

