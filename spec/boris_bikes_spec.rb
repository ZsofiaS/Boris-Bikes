require 'boris_bikes'

describe DockingStation.new do
  it { is_expected.to respond_to(:release_bike)}

end
