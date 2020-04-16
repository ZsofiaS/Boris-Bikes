require 'boris_bikes'

describe DockingStation do

  it "responds to release_bike method" do
    expect(subject).to respond_to(:release_bike)
  end

  it "responds to dock method and takes 1 argument" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "responds to bike method" do
    expect(subject).to respond_to(:bike)
  end

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "shows returned bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#release_bike' do

    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'throws an error when no bike available' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

end
