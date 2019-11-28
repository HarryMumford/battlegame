feature "htipoints" do
  scenario "player 1 can see player 2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content("Harry's hitpoints: 100/100")
  end
end
