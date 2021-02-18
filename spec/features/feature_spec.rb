# feature "Battle Homepage" do
#   scenario 'Checks for text on homepage' do
#     visit '/battle'
#     expect(page).to have_content("Testing infrastructure working!.")
#   end
# end
feature "Allows user to enter their name" do
  scenario "User creates new name" do
    sign_in_and_play
    expect('/play').to have_content("Bob")
    expect('/play').to have_content("Brian")
  end
end

