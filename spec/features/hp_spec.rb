feature "View hit points" do
  scenario "See player 2 hit points" do
    sign_in_and_play
    expect('/play').to have_text("Brian: 60HP")
  end
end
