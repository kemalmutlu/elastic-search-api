# TODO: Try this 1.000.000 data with activerecord-import
1000.times do
  Product.create(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph
  )
end
