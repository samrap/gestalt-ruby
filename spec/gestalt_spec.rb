require "gestalt"

RSpec.describe Gestalt do
  it "has a version number" do
    expect(Gestalt::VERSION).not_to be nil
  end

  it "initailizes with a hash" do
    data = {
      name: 'Bonnie',
      food: 'sushi',
    }

    collection = Gestalt::Collection.new(data)

    expect(collection.all).to eql data
  end

  it "gets a value by key" do
    data = { name: 'Bonnie' }
    collection = Gestalt::Collection.new(data)

    expect(collection.get :name).to eql data[:name]
  end

  it "returns nil if key does not exist" do
    collection = Gestalt::Collection.new({})

    expect(collection.get :name).to eql nil
  end

  it "can return a default value if specified and key does not exist" do
    collection = Gestalt::Collection.new({})

    expect(collection.get :name, 'Bonnie').to eql 'Bonnie'
  end
end
