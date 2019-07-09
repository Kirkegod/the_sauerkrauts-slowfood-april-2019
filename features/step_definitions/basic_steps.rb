When("I visit the site") do
  visit root_path
end


Given("the following dishes exist") do |table|
  table.hashes.each do |dish|
    Dish.create!(dish)
  end
end