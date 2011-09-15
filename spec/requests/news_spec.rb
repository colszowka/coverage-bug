require 'spec_helper'

describe "News" do
  describe "POST /competitions/:id/POST" do
    it "should create news for competition" do
      c = create(:competition)
      visit new_competition_news_path(c)
      fill_in "Content", :with => "Hey there!"
      click_on "Create News"
      page.should have_content("Hey there!")
    end
  end
end