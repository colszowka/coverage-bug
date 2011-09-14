describe "Competition" do
  describe "GET /competitions" do
    it "should display competitions" do
      FactoryGirl.create(:competition, :name => "Blub")
      visit competitions_path
      page.should have_content("Blub")
    end
  end
end