When("I visit the site") do
  visit root_path
end

Given("the following products exist") do |table|
  table.hashes.each do |product|
    category = FactoryBot.create(:category, name: product[:category])
    # -#product.except!('category')
    FactoryBot.create(:product, product.merge(category: category))
  end
end

Given("the following categories exist") do |table|
  table.hashes.each do |category|
    FactoryBot.create(:category, category)
  end
end

