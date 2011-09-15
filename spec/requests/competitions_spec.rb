require 'spec_helper'

describe "Competition" do
  describe "GET /competitions" do
    it "should display competitions" do
      create(:competition, :name => "Blub")
      visit competitions_path
      page.should have_content("Blub")
    end
  end

  describe "GET /competitions/:id" do
    before do
      @c = create(:competition, :name => "Karlsruhe Open 2011", :description => "foo")
      n = create(:news, :content => "Sorry, but the venue burnt down! :(", :competition_id => @c.id)
    end

    it "should display basic information" do
      #visit competition_path(@c) # uncomment this line to see simplecov failing
    end
  end
end