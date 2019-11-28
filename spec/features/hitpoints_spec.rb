feature "htipoints" do
  scenario "player 1 can see player 2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content("Harry's hitpoints: 100/100")
  end

  scenario "when player 2 is attacked their hitpoints are reduced" do
    sign_in_and_play
    click_button "ATTACK!"
    expect(page).to have_content("Harry's hitpoints: 90/100")
  end
end
