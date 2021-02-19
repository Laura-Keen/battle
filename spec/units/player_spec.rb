describe Player do
  it 'returns a player name' do
    bob = Player.new('Bob')
    expect(bob.name).to eq 'Bob'
  end
end