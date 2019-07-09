When("I visit the site") do
  visit root_path
end


Given("I click {string}") do |link|
  click_on link
end