describe Game do
  subject{Game.new('Bob', 'Brian')}
  it 'Player 1 attacks player 2 and reduces their hp' do
    subject.attack($player_1)
    expect($player_1.hp).to eq 50
  end
end
