When("I visit the site") do
  visit root_path
end

Given("I click the {string} button") do |button|
  click_on button
end
  
When("I fill the {string} with {string}") do |field, input|
  fill_in field, with: input
end