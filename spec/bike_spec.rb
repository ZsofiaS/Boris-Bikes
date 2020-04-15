require "boris_bikes"

describe Bike do
  it "checks if it's working" do
    expect(Bike.new).to respond_to(:working?)
  end
end
