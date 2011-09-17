require 'spec_helper'

describe "Competition" do
  describe "GET /competitions/:id" do
    it "should display basic information" do
      # CompetitionController needs to be visited to produce bug
      get "/competitions"

      # Switch this with to get full coverage of competition model:
      if 1 == 2
        c = Competition.create(:name => "Karlsruhe Open 2011", :description => "foo", :starts_at => Date.new(2010, 1, 10), :ends_at => Date.new(2010, 1, 15))
      else
        c = FactoryGirl.create(:competition, :name => "Karlsruhe Open 2011", :description => "foo", :starts_at => Date.new(2010, 1, 10), :ends_at => Date.new(2010, 1, 15))
      end
      
      Competition.find(c.id)
    end
  end
end