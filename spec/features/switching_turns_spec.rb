feature "switching turns" do
  scenario "start with player 1's turn" do
    sign_in_and_play
    expect(page).to have_content("Kealan's turn")
  end

  scenario "switch turn after attack" do
    sign_in_and_play
    click_button "ATTACK!"
    expect(page).to_not have_content("Kealan's turn")
    expect(page).to have_content("Harry's turn")
  end
end