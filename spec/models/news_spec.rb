require 'spec_helper'

describe News do
  describe "validations" do
    it { should validate_presence_of :content }
    it { should validate_presence_of :competition_id }
  end
end
