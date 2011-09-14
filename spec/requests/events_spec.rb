describe "Events" do
  describe "GET /events" do
    it "should display event name" do
      create(:event, :name => "3x3x3")
      visit events_path
      page.should have_content("3x3x3")
    end
  end

  describe "POST /events" do
    it "should add a new event" do
      visit new_event_path
      fill_in "Name", :with => "Master Magic"
      click_on "Create Event"
      page.should have_content("Master Magic")
    end
  end
end