feature "Battle Homepage" do
  scenario 'Checks for text on homepage' do
    visit '/battle'
    expect(page).to have_content("Testing infrastructure working!.")
  end
end
