When("I visit the site") do
  visit root_path
end

Given("the following products exist") do |table|
  table.hashes.each do |product|
    binding.pry
    category = FactoryBot.create(:category, name: product[:category])
    product.except!('category')
    FactoryBot.create(:product, product.merge(category: category))
  end
end

