require 'spec_helper'

describe Competition do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :starts_at }
    it { should validate_presence_of :ends_at }
  end
end
