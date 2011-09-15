require 'spec_helper'

describe Competition do
  describe "validations" do
    it "should require ends_at >= starts_at" do
      c = FactoryGirl.build(:competition, :starts_at => Date.new(2010, 1, 2), :ends_at => Date.new(2010, 1, 1))
      c.should_not be_valid
      c.errors[:ends_at].should_not be_empty
    end
  end
end
