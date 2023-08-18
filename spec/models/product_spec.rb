require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is valid with valid attributes" do
    product = build(:product)
    expect(product).to be_valid
  end

  it "is not valid without a title" do
    product = build(:product, title: nil)
    expect(product).not_to be_valid
  end

  it "is not valid without a description" do
    product = build(:product, description: nil)
    expect(product).not_to be_valid
  end
end
