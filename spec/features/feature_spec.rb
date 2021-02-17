# feature "Battle Homepage" do
#   scenario 'Checks for text on homepage' do
#     visit '/battle'
#     expect(page).to have_content("Testing infrastructure working!.")
#   end
# end

feature "Allows user to enter their name" do
  scenario "User creates new name" do
    visit "/battle"

    fill_in "Player_1", :with => "Bob"
    fill_in "Player_2", :with => "Brian"
    click_button "Submit"

    expect(page).to have_text("Bob vs. Brian")
  end
end
