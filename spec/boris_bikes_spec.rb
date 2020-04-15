require 'boris_bikes'

describe "DockingStation" do
  it "releases a bike" do
    expect(DockingStation).to respond_to(:release_bike)
  end
end
