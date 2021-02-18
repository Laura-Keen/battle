feature "Attacking" do
  scenario "User attacks player 2" do
    sign_in_and_play
    click_link 'Attack'
    expect('/attack').to have_text("Bob attacked Brian")
  end
end