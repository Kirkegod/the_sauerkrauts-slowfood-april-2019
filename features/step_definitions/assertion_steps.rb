Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see {string} in the {string} category") do |product, category|
  product_category = Category.find_by(name: category)
  dom_section = "#category_#{product_category.id}"
  within(dom_section) do
    expect(page).to have_content product
  end
end

