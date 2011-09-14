require 'spec_helper'

describe Competition do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :starts_at }
    it { should validate_presence_of :ends_at }

    it "should require ends_at >= starts_at" do
      c = build(:competition, :starts_at => Date.new(2010, 1, 2), :ends_at => Date.new(2010, 1, 1))
      c.should_not be_valid
      c.errors[:ends_at].should_not be_empty
    end
  end
end
