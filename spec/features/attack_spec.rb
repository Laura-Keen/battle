feature "Attacking" do
  scenario "User attacks player 2" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Bob attacked Brian"
  end
end