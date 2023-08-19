chunk_size = 500
total_records = 100000

if Product.count.zero?
  (0..(total_records / chunk_size)).each do |chunk_index|
    start_index = chunk_index * chunk_size
    end_index = [(chunk_index + 1) * chunk_size - 1, total_records - 1].min

    data = (start_index..end_index).map do |i|
      { title: Faker::Commerce.product_name, description: Faker::Lorem.paragraph }
    end

    unless data.empty?
      Product.upsert_all(data)
    end

    puts "Processed records #{start_index} to #{end_index}"
  end
end
