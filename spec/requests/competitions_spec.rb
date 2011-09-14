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

  describe "GET /competitions/id" do
    before do
      c = create(:competition, :name => "Karlsruhe Open 2011", :description => "foo")
      n = create(:news, :content => "Sorry, but the venue burnt down! :(", :competition_id => c.id)
      visit competition_path(c)
    end

    it "should display basic information" do
      page.should have_content("Karlsruhe Open 2011")
      page.should have_content("foo")
    end

    it "should display at least the latest news" do
      page.should have_content("but the venue burnt")
    end
  end
end