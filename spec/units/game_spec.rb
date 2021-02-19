describe Game do
  it 'Player 1 attacks player 2 and reduces their hp' do
    bob = Player.new('Bob')
    brian = Player.new('Brian')
    subject.attack(brian)
    expect(brian.hp).to eq 50
  end
end
