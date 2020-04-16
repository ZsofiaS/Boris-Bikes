require 'boris_bikes'

describe DockingStation.new do

  it { is_expected.to respond_to(:release_bike) }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "shows returned bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
