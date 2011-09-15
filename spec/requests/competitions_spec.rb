require 'spec_helper'

describe "Competition" do
  describe "GET /competitions/:id" do
    it "should display basic information" do
      # CompetitionController needs to be visited to produce bug
      get "/competitions"
      # Replace this with c = Competition.create(:name => "Karlsruhe Open 2011", :description => "foo", :starts_at => Date.new, :ends_at => Date.new)
      # to get full coverage of competition model
      c = FactoryGirl.create(:competition, :name => "Karlsruhe Open 2011", :description => "foo")
      Competition.find(c.id)
    end
  end
end