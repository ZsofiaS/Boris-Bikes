require "boris_bikes"

describe Bike do

  it "checks if it's working" do
    expect(Bike.new).to respond_to(:working?)
  end

  describe ".working?" do
    it "checks if bike is working" do
      expect(subject.working?).to be(true)
    end
  end
end
