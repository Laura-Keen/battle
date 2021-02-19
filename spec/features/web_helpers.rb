def sign_in_and_play
  visit "/battle"

  # fill_in "player_1", with => "Bob"
  # fill_in "player_2", :with => "Brian"
  fill_in :player_1_name, with: 'Bob'
  fill_in :player_2_name, with: 'Brian'
  click_button "Submit"
end