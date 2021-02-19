feature "Attacking" do
  scenario "User attacks player 2" do
    sign_in_and_play
    click_link 'Attack'
    # expect(page).to have_text "Bob attacked Brian and his HP is now: 50 Return to Attack Page"
  end
end
