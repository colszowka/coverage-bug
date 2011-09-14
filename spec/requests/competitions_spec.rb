describe "Competition" do
  describe "GET /competitions" do
    it "should display competitions" do
      create(:competition, :name => "Blub")
      visit competitions_path
      page.should have_content("Blub")
    end
  end

  describe "POST /competitions" do
    it "should create competitions" do
      visit new_competition_path
      fill_in "Name", :with => "Foo"
      fill_in "Description", :with => "Muh"
      click_button "Create Competition"
      page.should have_content("Foo")
    end
  end
end