require 'spec_helper'

describe Fillup do
  before do
    @fillup = Fillup.new(
      :odometer => 99999.9,
      :price => 9.999,
      :volume => 9.999,
      :missed => false,
      :partial => false
    )
  end

  subject { @fillup }

  it { should respond_to :odometer }
  it { should respond_to :price }
  it { should respond_to :volume }
  it { should respond_to :total }
  it { should be_valid }

  describe "when odometer is not present" do
    before do
      fillup_with_same_odometer = @fillup.dup
      fillup_with_same_odometer.save
    end

    it { should_not be_valid }
  end

  describe "when odometer is not unique" do
    before { @fillup.odometer = nil }
    it { should_not be_valid }
  end

  describe "when odometer is not valid" do
    before { @fillup.odometer = -1 }
    it { should_not be_valid }
  end

  describe "when price is not present" do
    before { @fillup.price = nil }
    it { should_not be_valid }
  end

  describe "when price is not valid" do
    before { @fillup.price = -1 }
    it { should_not be_valid }
  end

  describe "when volume is not present" do
    before { @fillup.volume = nil }
    it { should_not be_valid }
  end

  describe "when volume is not valid" do
    before { @fillup.volume = -1 }
    it { should_not be_valid }
  end

end
