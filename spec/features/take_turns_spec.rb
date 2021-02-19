feature "takeing turns" do
  scenario "After an attack, the turn switches" do
    sign_in_and_play
    click_link "Attack"
    expect($game.turn).to eq("player_2")
  end

  scenario "the same in reverse" do
    sign_in_and_play
    click_link "Attack"
    click_link "Return to Attack Page"
    click_link "Attack"
    expect($game.turn).to eq("player_1")
  end
end
