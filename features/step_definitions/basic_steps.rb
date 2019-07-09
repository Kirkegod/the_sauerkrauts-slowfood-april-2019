When("I visit the site") do
  visit root_path
end


Given("the following products exist") do |table|
  table.hashes.each do |product|
    Product.create!(product)
  end
end