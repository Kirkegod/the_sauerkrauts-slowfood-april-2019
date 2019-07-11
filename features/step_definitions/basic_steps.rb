When("I visit the site") do
  visit root_path
end

Given("I click the {string} button") do |button|
  click_on button
end
  
When("I fill the {string} with {string}") do |field, input|
  fill_in field, with: input
end

Given("the following products exist") do |table|
  table.hashes.each do |product|
    FactoryBot.create(:product, product)
  end
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

When("I click on {string} on {string}") do |element, product_name|
  product = Product.find_by_name(product_name)
  within("#product_#{product.id}") do
    click_on element
  end
end